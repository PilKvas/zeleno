import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/export.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/detail/cubit/export.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/detail/widgets/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_details/domain/repository/export.dart';
import 'package:zeleno_v2/features/plant_details/presentation/widgets/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

const int _kVisibleTagsCount = 3;

/// Единый детальный экран растения.
///
/// [plantId] — экземпляр из «Моего сада»; [speciesSlug] — вид из каталога
/// (открытие из поиска: вместо настроек показывается кнопка «В сад»).
@RoutePage()
class GardenPlantDetailScreen extends StatelessWidget {
  const GardenPlantDetailScreen({super.key, this.plantId, this.speciesSlug})
    : assert(
        plantId != null || speciesSlug != null,
        'Нужен plantId (сад) или speciesSlug (каталог)',
      );

  final int? plantId;
  final String? speciesSlug;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GardenPlantDetailCubit>(
      create: (BuildContext context) => GardenPlantDetailCubit(
        gardenPlantsRepository: injection<IGardenPlantsRepository>(),
        plantDetailsRepository: injection<IPlantDetailsRepository>(),
        plantId: plantId,
        speciesSlug: speciesSlug,
      )..loadPlant(),
      child: const _GardenPlantDetailView(),
    );
  }
}

class _GardenPlantDetailView extends StatelessWidget {
  const _GardenPlantDetailView();

  Future<void> _openEditScreen(BuildContext context) async {
    final GardenPlantDetailCubit detailCubit = context
        .read<GardenPlantDetailCubit>();
    final GardenPlantModel? plant = detailCubit.state.plant;
    if (plant == null) {
      return;
    }
    final bool? wasUpdated = await context.router.push<bool>(
      AddGardenPlantRoute(
        plantId: plant.id,
        defaultPlantName: plant.customName,
      ),
    );
    if (wasUpdated == true && context.mounted) {
      await detailCubit.reloadAfterEdit();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GardenPlantDetailCubit, GardenPlantDetailState>(
      listenWhen:
          (GardenPlantDetailState previous, GardenPlantDetailState current) =>
              previous.wasDeleted != current.wasDeleted && current.wasDeleted,
      listener: (BuildContext context, GardenPlantDetailState state) {
        context.router.maybePop(true);
      },
      builder: (BuildContext context, GardenPlantDetailState state) {
        return _GardenPlantDetailContent(
          state: state,
          onOpenEdit: () => _openEditScreen(context),
        );
      },
    );
  }
}

/// Скаффолд с hero-аппбаром строится всегда: загрузка и ошибка живут внутри
/// того же CustomScrollView, чтобы кнопка «назад» не пропадала и экран не
/// перескакивал при появлении контента.
class _GardenPlantDetailContent extends StatelessWidget {
  const _GardenPlantDetailContent({
    required this.state,
    required this.onOpenEdit,
  });

  final GardenPlantDetailState state;
  final VoidCallback onOpenEdit;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final GardenPlantModel? plant = state.plant;
    final PlantDetailsModel? species = state.speciesDetails;
    final bool hasContent = plant != null || species != null;
    final bool isSpeciesMode = plant == null;
    final String languageCode = Localizations.localeOf(context).languageCode;
    final String title = !hasContent
        ? ''
        : plant?.customName ??
              species?.resolveMainCommonName(lang: languageCode) ??
              context.l10n.unknownName;
    final int? speciesId = species?.id;
    final bool showAddToGarden = hasContent && isSpeciesMode;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: <Widget>[
          GardenPlantHeroAppBar(
            title: title,
            imageUrl: plant?.imageUrl ?? species?.imageUrl,
            onBack: () => context.router.maybePop(state.wasUpdated),
            onSettings: plant == null || state.isSaving ? null : onOpenEdit,
          ),
          if (!hasContent && state.status.isFailure)
            SliverFillRemaining(
              hasScrollBody: false,
              child: _ErrorBody(error: state.error),
            )
          else if (!hasContent)
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: SizedBox(height: 72, width: 72, child: ZLoading()),
              ),
            )
          else ...<Widget>[
            _HeaderSliver(
              title: title,
              commonNames: species?.commonNamesForLang(languageCode),
              plant: plant,
              species: species,
            ),
            if (species?.genusDescription case final String description
                when description.isNotEmpty)
              GardenPlantSectionSliver(
                title: context.l10n.plantDetailDescription,
                child: Text(
                  description,
                  style: ZTypography.of(
                    context,
                  ).body.copyWith(color: colorScheme.onBackground),
                ),
              ),
            GardenPlantSectionSliver(
              title: context.l10n.plantDetailScientificClassification,
              child: ScientificClassificationWidget(
                latinName: species?.latinName ?? plant?.speciesLatinName,
                misc: species?.misc,
              ),
            ),
            GardenPlantSectionSliver(
              title: context.l10n.tags,
              child: _TagsWrap(tags: species?.tags ?? const <String>[]),
            ),
          ],
          const SliverSafeArea(
            top: false,
            sliver: SliverPadding(padding: EdgeInsets.only(bottom: 24)),
          ),
        ],
      ),
      bottomNavigationBar: showAddToGarden
          ? ColoredBox(
              color: colorScheme.background,
              child: SafeArea(
                top: false,
                minimum: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: ZButton.gradient1(
                  onPressed: speciesId == null
                      ? null
                      : () => context.router.push(
                          PlantRoomsSelectionRoute(
                            speciesId: speciesId,
                            speciesSlug: state.speciesSlug ?? '',
                            defaultPlantName: title,
                          ),
                        ),
                  child: Text(context.l10n.toTheGardenButtonTitle),
                ),
              ),
            )
          : null,
    );
  }
}

class _ErrorBody extends StatelessWidget {
  const _ErrorBody({required this.error});

  final Object? error;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final Object? error = this.error;
    final String message = error == null
        ? context.l10n.gardenPlantLoadError
        : mapErrorToMessage(error, context.l10n);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: .min,
          children: <Widget>[
            Text(
              message,
              textAlign: .center,
              style: typography.body.copyWith(color: colorScheme.secondaryText),
            ),
            const SizedBox(height: 16),
            ZButton.gradient1(
              onPressed: () =>
                  context.read<GardenPlantDetailCubit>().loadPlant(),
              child: Text(context.l10n.retry),
            ),
          ],
        ),
      ),
    );
  }
}

/// Название, общие имена, карточки ухода, заметки и статы.
class _HeaderSliver extends StatelessWidget {
  const _HeaderSliver({
    required this.title,
    required this.commonNames,
    required this.plant,
    required this.species,
  });

  final String title;
  final List<String>? commonNames;
  final GardenPlantModel? plant;
  final PlantDetailsModel? species;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final List<String> names = commonNames ?? const <String>[];
    final GardenPlantModel? plant = this.plant;
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
      sliver: SliverList.list(
        children: <Widget>[
          Text(
            title,
            style: typography.largeTitle.copyWith(
              color: colorScheme.onBackground,
            ),
          ),
          if (names.isNotEmpty) ...<Widget>[
            const SizedBox(height: 8),
            Text(
              names.join(' • '),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: typography.body.copyWith(color: colorScheme.brand),
            ),
          ],
          const SizedBox(height: 20),
          _CareCardsRow(plant: plant, species: species),
          if (plant != null) ...<Widget>[
            const SizedBox(height: 12),
            GardenPlantNotesTileWidget(
              onTap: () =>
                  context.router.push(GardenPlantNotesRoute(plantId: plant.id)),
            ),
          ],
          const SizedBox(height: 16),
          GardenPlantStatsGradientCard(
            ageText: _formatAge(context, plant?.createdAt),
            spreadText: _formatMeters(
              context,
              species?.spreadMinCm,
              species?.spreadMaxCm,
              context.l10n.gardenPlantSpreadMeters,
            ),
            heightText: _formatMeters(
              context,
              species?.heightMinCm,
              species?.heightMaxCm,
              context.l10n.gardenPlantHeightMeters,
            ),
          ),
        ],
      ),
    );
  }

  String? _formatAge(BuildContext context, DateTime? createdAt) {
    if (createdAt == null) {
      return null;
    }
    final int years = DateTime.now().difference(createdAt).inDays ~/ 365;
    if (years <= 0) {
      return '< 1';
    }
    return context.l10n.gardenPlantAge(years.toString());
  }

  String? _formatMeters(
    BuildContext context,
    int? minCm,
    int? maxCm,
    String Function(String value) format,
  ) {
    if (minCm == null && maxCm == null) {
      return null;
    }
    final double min = (minCm ?? maxCm!) / 100;
    final double max = (maxCm ?? minCm!) / 100;
    final double average = (min + max) / 2;
    return format(average.toStringAsFixed(1));
  }
}

class _TagsWrap extends StatelessWidget {
  const _TagsWrap({required this.tags});

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    final List<String> visibleTags = tags.length > _kVisibleTagsCount
        ? tags.sublist(0, _kVisibleTagsCount)
        : tags;
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        if (visibleTags.isEmpty)
          TagWidget(text: context.l10n.noTagsAvailable)
        else
          ...visibleTags.map((String tag) => TagWidget(text: tag)),
        if (tags.length > _kVisibleTagsCount)
          GestureDetector(
            onTap: () => _showAllTags(context),
            child: TagWidget(text: context.l10n.gardenPlantOpenAllTags),
          ),
      ],
    );
  }

  void _showAllTags(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: ZColorScheme.of(context).surface,
      builder: (BuildContext sheetContext) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: tags.map((String tag) => TagWidget(text: tag)).toList(),
            ),
          ),
        );
      },
    );
  }
}

class _CareCardsRow extends StatelessWidget {
  const _CareCardsRow({required this.plant, required this.species});

  final GardenPlantModel? plant;
  final PlantDetailsModel? species;

  @override
  Widget build(BuildContext context) {
    final String noData = context.l10n.gardenPlantCareNoData;
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: .stretch,
        children: <Widget>[
          Expanded(
            child: GardenPlantCareCardWidget(
              icon: Icons.yard_outlined,
              title: context.l10n.gardenPlantCareRepotting,
              subtitle:
                  _careSubtitle(
                    context,
                    exactDate: plant?.lastRepottingExactDate,
                    rawValue: plant?.lastRepotting,
                  ) ??
                  noData,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: GardenPlantCareCardWidget(
              icon: Icons.water_drop_outlined,
              title: context.l10n.gardenPlantCareWatering,
              subtitle:
                  _careSubtitle(
                    context,
                    exactDate: plant?.lastWateringExactDate,
                    rawValue: plant?.lastWatering,
                  ) ??
                  noData,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: GardenPlantCareCardWidget(
              icon: Icons.eco_outlined,
              title: context.l10n.gardenPlantCareFertilizing,
              subtitle: _fertilizerSubtitle(context) ?? noData,
            ),
          ),
        ],
      ),
    );
  }

  /// Точная дата приоритетнее машинного значения периода.
  String? _careSubtitle(
    BuildContext context, {
    required String? exactDate,
    required String? rawValue,
  }) {
    final DateTime? date = exactDate == null
        ? null
        : DateTime.tryParse(exactDate);
    if (date != null) {
      final String locale = Localizations.localeOf(context).toString();
      return DateFormat.yMMMd(locale).format(date);
    }
    return rawValue;
  }

  String? _fertilizerSubtitle(BuildContext context) {
    final List<RegularEvent>? events = species?.regularEvents;
    if (events == null || events.isEmpty) {
      return null;
    }
    // Событие удобрения ищем по названию; показывать вместо него первое
    // попавшееся событие нельзя — заголовок карточки станет враньём.
    RegularEvent? fertilizerEvent;
    for (final RegularEvent event in events) {
      final String name = event.name?.toLowerCase() ?? '';
      if (name.contains('удобр') || name.contains('fertil')) {
        fertilizerEvent = event;
        break;
      }
    }
    if (fertilizerEvent == null) {
      return null;
    }
    final int? min = fertilizerEvent.intervalMin;
    final int? max = fertilizerEvent.intervalMax;
    final String? unit = fertilizerEvent.intervalUnit;
    if (min == null || max == null || unit == null) {
      return fertilizerEvent.name;
    }
    return context.l10n.gardenPlantCareInterval(
      min.toString(),
      max.toString(),
      unit,
    );
  }
}
