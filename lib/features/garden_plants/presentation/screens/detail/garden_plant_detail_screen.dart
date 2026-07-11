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

const double _kHeroImageHeight = 360;
const int _kVisibleTagsCount = 3;

/// Единый детальный экран растения.
///
/// [plantId] — экземпляр из «Моего сада»; [speciesSlug] — вид из каталога
/// (открытие из поиска: вместо настроек показывается кнопка «В сад»).
@RoutePage()
class GardenPlantDetailScreen extends StatelessWidget {
  const GardenPlantDetailScreen({
    super.key,
    this.plantId,
    this.speciesSlug,
  }) : assert(
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
    final GardenPlantDetailCubit detailCubit =
        context.read<GardenPlantDetailCubit>();
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
      listenWhen: (
        GardenPlantDetailState previous,
        GardenPlantDetailState current,
      ) =>
          previous.wasDeleted != current.wasDeleted && current.wasDeleted,
      listener: (BuildContext context, GardenPlantDetailState state) {
        context.router.maybePop(true);
      },
      builder: (BuildContext context, GardenPlantDetailState state) {
        final bool hasContent =
            state.plant != null || state.speciesDetails != null;
        if (state.status.isLoading && !hasContent) {
          return const Scaffold(
            body: Center(
              child: SizedBox(
                height: 72,
                width: 72,
                child: ZLoading(),
              ),
            ),
          );
        }
        if (state.status.isFailure && !hasContent) {
          return _ErrorScaffold(state: state);
        }
        return _GardenPlantDetailContent(
          state: state,
          onOpenEdit: () => _openEditScreen(context),
        );
      },
    );
  }
}

class _ErrorScaffold extends StatelessWidget {
  const _ErrorScaffold({required this.state});

  final GardenPlantDetailState state;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final String message = state.error == null
        ? context.l10n.gardenPlantLoadError
        : mapErrorToMessage(state.error!, context.l10n);
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        backgroundColor: colorScheme.background,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: colorScheme.onBackground),
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                message,
                textAlign: TextAlign.center,
                style: typography.body.copyWith(
                  color: colorScheme.secondaryText,
                ),
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
      ),
    );
  }
}

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
    final ZTypography typography = ZTypography.of(context);
    final GardenPlantModel? plant = state.plant;
    final PlantDetailsModel? species = state.speciesDetails;
    final bool isSpeciesMode = plant == null;
    final String languageCode = Localizations.localeOf(context).languageCode;
    final String title = plant?.customName ??
        species?.resolveMainCommonName(lang: languageCode) ??
        context.l10n.unknownName;
    final List<String> commonNames =
        species?.commonNamesForLang(languageCode) ?? <String>[];
    final List<String> tags = species?.tags ?? <String>[];
    final List<String> visibleTags = tags.length > _kVisibleTagsCount
        ? tags.sublist(0, _kVisibleTagsCount)
        : tags;
    return Scaffold(
      backgroundColor: colorScheme.background,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Container(
              margin: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: colorScheme.surface,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () => context.router.maybePop(state.wasUpdated),
                icon: Icon(
                  Icons.chevron_left,
                  color: colorScheme.onSurface,
                ),
              ),
            ),
            actions: <Widget>[
              if (!isSpeciesMode)
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: colorScheme.surface,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.settings_outlined,
                      color: colorScheme.brand,
                    ),
                    onPressed: state.isSaving ? null : onOpenEdit,
                  ),
                ),
            ],
            expandedHeight: _kHeroImageHeight,
            pinned: true,
            backgroundColor: colorScheme.surface,
            flexibleSpace: FlexibleSpaceBar(
              background: _PlantImage(
                imageUrl: plant?.imageUrl ?? species?.imageUrl,
                colorScheme: colorScheme,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                decoration: BoxDecoration(
                  color: colorScheme.background,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                height: 20,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: colorScheme.background,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: typography.largeTitle.copyWith(
                      color: colorScheme.onBackground,
                    ),
                  ),
                  if (commonNames.isNotEmpty) ...<Widget>[
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 20,
                      width: MediaQuery.sizeOf(context).width,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                            commonNames[index],
                            style: typography.body.copyWith(
                              color: colorScheme.brand,
                            ),
                          );
                        },
                        separatorBuilder: (
                          BuildContext context,
                          int index,
                        ) =>
                            Text(
                          ' • ',
                          style: typography.body.copyWith(
                            color: colorScheme.brand,
                          ),
                        ),
                        itemCount: commonNames.length,
                      ),
                    ),
                  ],
                  if (isSpeciesMode) ...<Widget>[
                    const SizedBox(height: 16),
                    ZButton.gradient1(
                      onPressed: species?.id == null
                          ? null
                          : () => context.router.push(
                                PlantRoomsSelectionRoute(
                                  speciesId: species!.id!,
                                  speciesSlug: state.speciesSlug ?? '',
                                  defaultPlantName: title,
                                ),
                              ),
                      child: Text(context.l10n.toTheGardenButtonTitle),
                    ),
                  ],
                  const SizedBox(height: 20),
                  _CareCardsRow(
                    plant: plant,
                    species: species,
                  ),
                  const SizedBox(height: 24),
                  if (species?.genusDescription != null &&
                      species!.genusDescription!.isNotEmpty)
                    ExpandableSectionWidget(
                      title: context.l10n.plantDetailDescription,
                      content: species.genusDescription!,
                    ),
                  if (species?.genusDescription != null &&
                      species!.genusDescription!.isNotEmpty)
                    const SizedBox(height: 16),
                  GardenPlantStatsGradientCard(
                    ageText: _formatAge(context, plant?.createdAt),
                    spreadText: _formatSpreadMeters(context, species),
                    heightText: _formatHeightMeters(context, species),
                  ),
                  const SizedBox(height: 16),
                  ExpandableSectionWidget(
                    title: context.l10n.plantDetailScientificClassification,
                    content: ScientificClassificationWidget(
                      latinName:
                          species?.latinName ?? plant?.speciesLatinName,
                      misc: species?.misc,
                    ),
                    isTable: true,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    context.l10n.tags,
                    style: typography.headline300.copyWith(
                      color: colorScheme.onBackground,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: <Widget>[
                      if (visibleTags.isEmpty)
                        TagWidget(text: context.l10n.noTagsAvailable)
                      else
                        ...visibleTags.map(
                          (String tag) => TagWidget(text: tag),
                        ),
                      if (tags.length > _kVisibleTagsCount)
                        GestureDetector(
                          onTap: () => _showAllTags(context, tags),
                          child: TagWidget(
                            text: context.l10n.gardenPlantOpenAllTags,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatAge(BuildContext context, DateTime? createdAt) {
    if (createdAt == null) {
      return '-';
    }
    final int years = DateTime.now().difference(createdAt).inDays ~/ 365;
    if (years <= 0) {
      return '< 1';
    }
    return context.l10n.gardenPlantAge(years.toString());
  }

  String _formatSpreadMeters(
    BuildContext context,
    PlantDetailsModel? species,
  ) {
    final String value = _averageMeters(
      species?.spreadMinCm,
      species?.spreadMaxCm,
    );
    if (value == '-') {
      return value;
    }
    return context.l10n.gardenPlantSpreadMeters(value);
  }

  String _formatHeightMeters(
    BuildContext context,
    PlantDetailsModel? species,
  ) {
    final String value = _averageMeters(
      species?.heightMinCm,
      species?.heightMaxCm,
    );
    if (value == '-') {
      return value;
    }
    return context.l10n.gardenPlantHeightMeters(value);
  }

  String _averageMeters(int? minCm, int? maxCm) {
    if (minCm == null && maxCm == null) {
      return '-';
    }
    final double min = (minCm ?? maxCm!) / 100;
    final double max = (maxCm ?? minCm!) / 100;
    final double average = (min + max) / 2;
    return average.toStringAsFixed(1);
  }

  void _showAllTags(BuildContext context, List<String> tags) {
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
              children: tags
                  .map((String tag) => TagWidget(text: tag))
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}

class _CareCardsRow extends StatelessWidget {
  const _CareCardsRow({
    required this.plant,
    required this.species,
  });

  final GardenPlantModel? plant;
  final PlantDetailsModel? species;

  @override
  Widget build(BuildContext context) {
    final String noData = context.l10n.gardenPlantCareNoData;
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GardenPlantCareCardWidget(
            icon: Icons.yard_outlined,
            title: context.l10n.gardenPlantCareRepotting,
            subtitle: _careSubtitle(
                  context,
                  exactDate: plant?.lastRepottingExactDate,
                  rawValue: plant?.lastRepotting,
                ) ??
                noData,
          ),
          const SizedBox(width: 8),
          GardenPlantCareCardWidget(
            icon: Icons.water_drop_outlined,
            title: context.l10n.gardenPlantCareWatering,
            subtitle: _careSubtitle(
                  context,
                  exactDate: plant?.lastWateringExactDate,
                  rawValue: plant?.lastWatering,
                ) ??
                noData,
          ),
          const SizedBox(width: 8),
          GardenPlantCareCardWidget(
            icon: Icons.eco_outlined,
            title: context.l10n.gardenPlantCareFertilizing,
            subtitle: _fertilizerSubtitle(context) ?? noData,
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

class _PlantImage extends StatelessWidget {
  const _PlantImage({
    required this.imageUrl,
    required this.colorScheme,
  });

  final String? imageUrl;
  final ZColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return Image.network(
        imageUrl!,
        fit: BoxFit.cover,
        errorBuilder: (
          BuildContext context,
          Object error,
          StackTrace? stackTrace,
        ) =>
            _Placeholder(colorScheme: colorScheme),
      );
    }
    return _Placeholder(colorScheme: colorScheme);
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({required this.colorScheme});

  final ZColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: colorScheme.secondaryBg,
      child: Icon(
        Icons.local_florist_outlined,
        color: colorScheme.brand,
        size: 64,
      ),
    );
  }
}
