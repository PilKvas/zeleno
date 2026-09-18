import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/presentation/screens/edit/cubit/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

const double _kHorizontalPadding = 16;
const int _kContentMaxLines = 8;

/// Создание (`note == null`) и редактирование заметки растения.
@RoutePage()
class GardenPlantNoteEditScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const GardenPlantNoteEditScreen({
    super.key,
    required this.plantId,
    this.note,
  });

  final int plantId;
  final PlantNoteModel? note;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<GardenPlantNoteEditCubit>(
      create: (_) => GardenPlantNoteEditCubit(
        plantNotesRepository: injection(),
        plantId: plantId,
        note: note,
      ),
      child: this,
    );
  }

  @override
  State<GardenPlantNoteEditScreen> createState() =>
      _GardenPlantNoteEditScreenState();
}

class _GardenPlantNoteEditScreenState extends State<GardenPlantNoteEditScreen> {
  late final TextEditingController _titleController;
  late final TextEditingController _contentController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.note?.title ?? '');
    _contentController = TextEditingController(
      text: widget.note?.content ?? '',
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  Future<void> _confirmDelete(BuildContext context) async {
    final GardenPlantNoteEditCubit cubit = context
        .read<GardenPlantNoteEditCubit>();
    final PlantNoteModel? note = cubit.state.note;
    if (note == null) {
      return;
    }
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(context.l10n.gardenPlantNoteDeleteTitle),
          content: Text(context.l10n.gardenPlantNoteDeleteMessage(note.title)),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: Text(context.l10n.gardenPlantNoteDeleteCancel),
            ),
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(context.l10n.gardenPlantNoteDeleteConfirm),
            ),
          ],
        );
      },
    );
    if (confirmed == true) {
      await cubit.delete();
    }
  }

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    return BlocListener<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
      listenWhen:
          (
            GardenPlantNoteEditState previous,
            GardenPlantNoteEditState current,
          ) =>
              (!previous.wasSaved && current.wasSaved) ||
              (!previous.wasDeleted && current.wasDeleted),
      listener: (BuildContext context, GardenPlantNoteEditState state) {
        context.router.maybePop(true);
      },
      child: Scaffold(
        backgroundColor: colors.background,
        appBar: AppBar(
          backgroundColor: colors.background,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.chevron_left, color: colors.onBackground),
            onPressed: () => context.router.maybePop(),
          ),
        ),
        body: SafeArea(
          child:
              BlocBuilder<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
                builder:
                    (BuildContext context, GardenPlantNoteEditState state) {
                      final GardenPlantNoteEditCubit cubit = context
                          .read<GardenPlantNoteEditCubit>();
                      final (String? titleError, String? contentError) =
                          _validationMessages(context, state.validationError);
                      final String? errorText = state.error == null
                          ? null
                          : mapErrorToMessage(state.error!, context.l10n);
                      final bool contentOverflow =
                          state.content.trim().length >
                          kPlantNoteContentMaxLength;
                      return Column(
                        crossAxisAlignment: .stretch,
                        children: <Widget>[
                          Expanded(
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.symmetric(
                                horizontal: _kHorizontalPadding,
                              ),
                              child: Column(
                                crossAxisAlignment: .stretch,
                                children: <Widget>[
                                  Text(
                                    state.isEditMode
                                        ? context.l10n.gardenPlantNoteEditTitle
                                        : context.l10n.gardenPlantNoteNewTitle,
                                    style: typography.largeTitle.copyWith(
                                      color: colors.onBackground,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  ZTextField(
                                    controller: _titleController,
                                    hintText:
                                        context.l10n.gardenPlantNoteTitleHint,
                                    fillColor: colors.surface,
                                    isDebounsed: false,
                                    onChanged: cubit.updateTitle,
                                  ),
                                  if (titleError != null) ...<Widget>[
                                    const SizedBox(height: 6),
                                    _FieldMessage(
                                      text: titleError,
                                      color: colors.error,
                                    ),
                                  ],
                                  const SizedBox(height: 12),
                                  ZTextField(
                                    controller: _contentController,
                                    hintText:
                                        context.l10n.gardenPlantNoteContentHint,
                                    fillColor: colors.surface,
                                    isDebounsed: false,
                                    maxLines: _kContentMaxLines,
                                    keyboardType: TextInputType.multiline,
                                    onChanged: cubit.updateContent,
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: <Widget>[
                                      if (contentError != null)
                                        Expanded(
                                          child: _FieldMessage(
                                            text: contentError,
                                            color: colors.error,
                                          ),
                                        )
                                      else
                                        const Spacer(),
                                      Text(
                                        context.l10n.gardenPlantNoteCounter(
                                          state.content.trim().length,
                                          kPlantNoteContentMaxLength,
                                        ),
                                        style: typography.caption.copyWith(
                                          color: contentOverflow
                                              ? colors.error
                                              : colors.secondaryText,
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (errorText != null) ...<Widget>[
                                    const SizedBox(height: 16),
                                    _FieldMessage(
                                      text: errorText,
                                      color: colors.error,
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              _kHorizontalPadding,
                              8,
                              _kHorizontalPadding,
                              16,
                            ),
                            child: state.status.isLoading
                                ? const Center(
                                    child: SizedBox(
                                      height: 46,
                                      width: 46,
                                      child: ZLoading(),
                                    ),
                                  )
                                : Column(
                                    crossAxisAlignment: .stretch,
                                    children: <Widget>[
                                      ZButton.gradient1(
                                        onPressed: cubit.submit,
                                        child: Text(
                                          context.l10n.gardenPlantNoteSave,
                                        ),
                                      ),
                                      if (state.isEditMode) ...<Widget>[
                                        const SizedBox(height: 12),
                                        ZButton.secondary(
                                          onPressed: () =>
                                              _confirmDelete(context),
                                          child: Text(
                                            context.l10n.gardenPlantNoteDelete,
                                            style: typography.body.copyWith(
                                              color: colors.error,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                          ),
                        ],
                      );
                    },
              ),
        ),
      ),
    );
  }

  (String?, String?) _validationMessages(
    BuildContext context,
    PlantNoteValidationError? error,
  ) {
    return switch (error) {
      PlantNoteValidationError.emptyTitle => (
        context.l10n.gardenPlantNoteTitleRequired,
        null,
      ),
      PlantNoteValidationError.titleTooLong => (
        context.l10n.gardenPlantNoteTitleTooLong(kPlantNoteTitleMaxLength),
        null,
      ),
      PlantNoteValidationError.emptyContent => (
        null,
        context.l10n.gardenPlantNoteContentRequired,
      ),
      PlantNoteValidationError.contentTooLong => (
        null,
        context.l10n.gardenPlantNoteContentTooLong(kPlantNoteContentMaxLength),
      ),
      null => (null, null),
    };
  }
}

class _FieldMessage extends StatelessWidget {
  const _FieldMessage({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: ZTypography.of(context).body.copyWith(color: color),
    );
  }
}
