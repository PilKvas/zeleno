import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/presentation/screens/list/cubit/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/presentation/screens/list/widgets/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

const double _kHorizontalPadding = 16;
const double _kItemSpacing = 12;

@RoutePage()
class GardenPlantNotesScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const GardenPlantNotesScreen({super.key, required this.plantId});

  final int plantId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<GardenPlantNotesCubit>(
      create: (_) => GardenPlantNotesCubit(
        plantNotesRepository: injection(),
        plantId: plantId,
      )..loadNotes(),
      child: this,
    );
  }

  Future<void> _openEditor(BuildContext context, {PlantNoteModel? note}) async {
    final GardenPlantNotesCubit cubit = context.read<GardenPlantNotesCubit>();
    final bool? changed = await context.router.push<bool>(
      GardenPlantNoteEditRoute(plantId: plantId, note: note),
    );
    if (changed == true && context.mounted) {
      await cubit.loadNotes();
    }
  }

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    return Scaffold(
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
        child: BlocBuilder<GardenPlantNotesCubit, GardenPlantNotesState>(
          builder: (BuildContext context, GardenPlantNotesState state) {
            if (state.status.isLoading && state.notes.isEmpty) {
              return const Center(
                child: SizedBox(height: 72, width: 72, child: ZLoading()),
              );
            }
            if (state.status.isFailure && state.notes.isEmpty) {
              return _ErrorView(error: state.error);
            }
            return Column(
              crossAxisAlignment: .stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: _kHorizontalPadding,
                  ),
                  child: Text(
                    context.l10n.gardenPlantNotesTitle,
                    style: typography.largeTitle.copyWith(
                      color: colors.onBackground,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: context.read<GardenPlantNotesCubit>().loadNotes,
                    child: state.notes.isEmpty
                        ? const _EmptyView()
                        : _NotesList(
                            notes: state.notes,
                            onNoteTap: (PlantNoteModel note) =>
                                _openEditor(context, note: note),
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
                  child: ZButton.gradient1(
                    onPressed: () => _openEditor(context),
                    child: Text(context.l10n.gardenPlantNotesAdd),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _NotesList extends StatelessWidget {
  const _NotesList({required this.notes, required this.onNoteTap});

  final List<PlantNoteModel> notes;
  final ValueChanged<PlantNoteModel> onNoteTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: _kHorizontalPadding),
      itemCount: notes.length,
      separatorBuilder: (_, __) => const SizedBox(height: _kItemSpacing),
      itemBuilder: (BuildContext context, int index) {
        final PlantNoteModel note = notes[index];
        return PlantNoteCardWidget(
          key: ValueKey<int>(note.id),
          note: note,
          onTap: () => onNoteTap(note),
        );
      },
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    // ListView, а не Column — иначе pull-to-refresh на пустом экране не сработает.
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
      children: <Widget>[
        Icon(Icons.sticky_note_2_outlined, size: 48, color: colors.brand),
        const SizedBox(height: 16),
        Text(
          context.l10n.gardenPlantNotesEmpty,
          textAlign: TextAlign.center,
          style: typography.body.copyWith(color: colors.secondaryText),
        ),
      ],
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.error});

  final Object? error;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final String message = error == null
        ? context.l10n.gardenPlantNotesLoadError
        : mapErrorToMessage(error!, context.l10n);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: .min,
          children: <Widget>[
            Text(
              message,
              textAlign: TextAlign.center,
              style: typography.body.copyWith(color: colors.secondaryText),
            ),
            const SizedBox(height: 16),
            ZButton.gradient1(
              onPressed: context.read<GardenPlantNotesCubit>().loadNotes,
              child: Text(context.l10n.retry),
            ),
          ],
        ),
      ),
    );
  }
}
