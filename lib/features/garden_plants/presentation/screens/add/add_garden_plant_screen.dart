import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/export.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/add/cubit/export.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/add/widgets/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

@RoutePage()
class AddGardenPlantScreen extends StatelessWidget {
  const AddGardenPlantScreen({
    super.key,
    required this.defaultPlantName,
    this.plantId,
    this.speciesId = 0,
    this.roomId = 0,
  });

  /// `null` — режим создания нового экземпляра; иначе — редактирование
  /// (в этом режиме [speciesId] и [roomId] не нужны: кубит загрузит их сам).
  final int? plantId;
  final int speciesId;
  final int roomId;
  final String defaultPlantName;

  bool get _isEditMode => plantId != null;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddGardenPlantCubit>(
      create: (BuildContext context) {
        if (_isEditMode) {
          return AddGardenPlantCubit.edit(
            gardenPlantsRepository: injection<IGardenPlantsRepository>(),
            plantId: plantId!,
          );
        }
        return AddGardenPlantCubit.create(
          gardenPlantsRepository: injection<IGardenPlantsRepository>(),
          speciesId: speciesId,
          roomId: roomId,
          initialCustomName: defaultPlantName,
        );
      },
      child: _AddGardenPlantView(
        defaultPlantName: defaultPlantName,
        isEditMode: _isEditMode,
      ),
    );
  }
}

class _AddGardenPlantView extends StatefulWidget {
  const _AddGardenPlantView({
    required this.defaultPlantName,
    required this.isEditMode,
  });

  final String defaultPlantName;
  final bool isEditMode;

  @override
  State<_AddGardenPlantView> createState() => _AddGardenPlantViewState();
}

class _AddGardenPlantViewState extends State<_AddGardenPlantView> {
  late final TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.defaultPlantName);
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  String? _validationMessage(
    BuildContext context,
    AddGardenPlantValidationError? validationError,
  ) {
    return switch (validationError) {
      AddGardenPlantValidationError.emptyName =>
        context.l10n.addGardenPlantNameRequired,
      AddGardenPlantValidationError.nameTooLong =>
        context.l10n.addGardenPlantNameTooLong,
      null => null,
    };
  }

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    return MultiBlocListener(
      listeners: <BlocListener<dynamic, dynamic>>[
        // Имя, загруженное для редактирования, попадает в контроллер
        // ровно один раз — когда растение пришло с сервера.
        BlocListener<AddGardenPlantCubit, AddGardenPlantState>(
          listenWhen: (
            AddGardenPlantState previous,
            AddGardenPlantState current,
          ) =>
              previous.editingPlant == null && current.editingPlant != null,
          listener: (BuildContext context, AddGardenPlantState state) {
            _nameController.text = state.customName;
          },
        ),
        BlocListener<AddGardenPlantCubit, AddGardenPlantState>(
          listenWhen: (
            AddGardenPlantState previous,
            AddGardenPlantState current,
          ) {
            if (current.plantId != null) {
              return !previous.wasUpdated && current.wasUpdated;
            }
            return previous.status != current.status &&
                current.status.isSuccess;
          },
          listener: (BuildContext context, AddGardenPlantState state) {
            if (state.plantId != null) {
              context.router.maybePop(true);
              return;
            }
            context.router.push(
              AddGardenPlantSuccessRoute(
                imageUploadFailed: state.imageUploadFailed,
              ),
            );
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: colorScheme.background,
        appBar: AppBar(
          backgroundColor: colorScheme.background,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.chevron_left, color: colorScheme.onBackground),
            onPressed: () => context.router.maybePop(),
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<AddGardenPlantCubit, AddGardenPlantState>(
            builder: (BuildContext context, AddGardenPlantState state) {
              if (widget.isEditMode &&
                  state.status.isLoading &&
                  state.editingPlant == null) {
                return const Center(
                  child: SizedBox(
                    height: 72,
                    width: 72,
                    child: ZLoading(),
                  ),
                );
              }
              if (widget.isEditMode &&
                  state.status.isFailure &&
                  state.editingPlant == null) {
                final String? errorText = state.error == null
                    ? null
                    : mapErrorToMessage(state.error!, context.l10n);
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          errorText ?? context.l10n.gardenPlantLoadError,
                          textAlign: TextAlign.center,
                          style: typography.body.copyWith(
                            color: colorScheme.secondaryText,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ZButton.gradient1(
                          onPressed: () => context
                              .read<AddGardenPlantCubit>()
                              .loadPlantForEdit(),
                          child: Text(context.l10n.retry),
                        ),
                      ],
                    ),
                  ),
                );
              }
              final String? validationText =
                  _validationMessage(context, state.validationError);
              final String? errorText = state.error == null
                  ? null
                  : mapErrorToMessage(state.error!, context.l10n);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            context.l10n.addGardenPlantHeadline,
                            style: typography.largeTitle.copyWith(
                              color: colorScheme.onBackground,
                              height: 1.3,
                            ),
                          ),
                          const SizedBox(height: 32),
                          _GardenPlantNameField(
                            controller: _nameController,
                            hasError: validationText != null,
                            onChanged: context
                                .read<AddGardenPlantCubit>()
                                .updateCustomName,
                          ),
                          if (validationText != null) ...<Widget>[
                            const SizedBox(height: 8),
                            Text(
                              validationText,
                              style: typography.body.copyWith(
                                color: colorScheme.error,
                              ),
                            ),
                          ],
                          const SizedBox(height: 14),
                          PlantPhotoPickerWidget(
                            photoBytes: state.photoBytes,
                            existingImageUrl: state.existingImageUrl,
                            removeExistingPhoto: state.removeExistingPhoto,
                            onPhotoPicked: (bytes, fileName) {
                              // Колбэк приходит после async gap выбора фото —
                              // контекст к этому моменту может быть демонтирован.
                              if (!context.mounted) {
                                return;
                              }
                              context.read<AddGardenPlantCubit>().updatePhoto(
                                    bytes: bytes,
                                    fileName: fileName,
                                  );
                            },
                            onPhotoCleared:
                                context.read<AddGardenPlantCubit>().clearPhoto,
                          ),
                          if (errorText != null) ...<Widget>[
                            const SizedBox(height: 16),
                            Text(
                              errorText,
                              style: typography.body.copyWith(
                                color: colorScheme.error,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: state.status.isLoading
                        ? const Center(
                            child: SizedBox(
                              height: 46,
                              width: 46,
                              child: ZLoading(),
                            ),
                          )
                        : ZButton.gradient1(
                            onPressed:
                                context.read<AddGardenPlantCubit>().submit,
                            child: Text(
                              widget.isEditMode
                                  ? context.l10n.addGardenPlantSave
                                  : context.l10n.addGardenPlantSubmit,
                            ),
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
}

class _GardenPlantNameField extends StatelessWidget {
  const _GardenPlantNameField({
    required this.controller,
    required this.hasError,
    required this.onChanged,
  });

  final TextEditingController controller;
  final bool hasError;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    return Container(
      height: 67,
      decoration: BoxDecoration(
        color: colorScheme.secondaryBg,
        borderRadius: BorderRadius.circular(10),
        border:
            hasError ? Border.all(color: colorScheme.error, width: 1) : null,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        maxLength: 255,
        style: typography.headline300.copyWith(
          color: colorScheme.brand,
          letterSpacing: -0.3,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          counterText: '',
          isDense: true,
          contentPadding: EdgeInsets.zero,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
