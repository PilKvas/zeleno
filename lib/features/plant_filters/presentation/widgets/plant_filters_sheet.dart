import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_filters/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/plant_search/presentation/bloc/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

class PlantFiltersSheet extends StatefulWidget {
  const PlantFiltersSheet({super.key});

  @override
  State<PlantFiltersSheet> createState() => _PlantFiltersSheetState();
}

class _PlantFiltersSheetState extends State<PlantFiltersSheet> {
  late PlantSearchFilters _filters;
  late final PlantSearchBloc _searchBloc;
  late final PlantFiltersCubit _filtersCubit;

  @override
  void initState() {
    super.initState();
    _searchBloc = context.read<PlantSearchBloc>();
    _filtersCubit = context.read<PlantFiltersCubit>();
    _filters = _searchBloc.state.filters;
    _filtersCubit.hydrateSoilSelections(
      soilPhValue: _searchBloc.state.filters.soilPh,
      soilMoistureValue: _searchBloc.state.filters.soilMoisture,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _filtersCubit.loadChoices();
    });
  }

  void _apply(PlantFiltersState filtersState) {
    _searchBloc.add(
      PlantSearchEvent.loadPlantList(
        refresh: true,
        name: _searchBloc.state.name,
        filters: _filters.copyWith(
          searchQuery: _searchBloc.state.name,
          soilPh: filtersState.soilPhValue,
          soilMoisture: filtersState.soilMoistureValue,
        ),
      ),
    );
    Navigator.pop(context);
  }

  void _reset() {
    _searchBloc.add(
      PlantSearchEvent.loadPlantList(
        refresh: true,
        name: _searchBloc.state.name,
        filters: PlantSearchFilters(searchQuery: _searchBloc.state.name),
      ),
    );
    _filtersCubit.resetSelections();
    setState(() => _filters = const PlantSearchFilters());
    Navigator.pop(context);
  }

  int? _selectedIndex(List<String> values, String? current) {
    if (current == null) return null;
    final i = values.indexOf(current);
    return i == -1 ? null : i;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final typography = ZTypography.of(context);
    final colors = ZColorScheme.of(context);

    return Padding(
      padding: EdgeInsets.fromLTRB(
        16,
        16,
        16,
        16 + MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 5,
              decoration: BoxDecoration(
                color: colors.secondaryText.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.filtersSheetTitle, style: typography.headline300),
              BlocSelector<PlantSearchBloc, PlantSearchState, bool>(
                selector: (state) => state.filters.hasActiveFilters,
                builder: (context, hasActive) => hasActive
                    ? GestureDetector(
                        onTap: _reset,
                        child: Text(
                          l10n.filtersSheetReset,
                          style:
                              typography.action.copyWith(color: colors.action),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
          const SizedBox(height: 16),
          BlocBuilder<PlantFiltersCubit, PlantFiltersState>(
            builder: (context, filtersState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (filtersState.status == FiltersStatus.loading)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                        child:
                            SizedBox(height: 40, width: 40, child: ZLoading()),
                      ),
                    )
                  else ...[
                    if (filtersState.status == FiltersStatus.failure)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Text(
                          l10n.filtersSheetLoadError,
                          style: typography.body.copyWith(color: colors.error),
                        ),
                      ),
                    _buildTabSelectors(context, filtersState),
                  ],
                  const SizedBox(height: 16),
                  Text(l10n.filtersSheetHeightRange, style: typography.title),
                  const SizedBox(height: 4),
                  RangeSlider(
                    values: RangeValues(
                      _filters.heightFrom ?? 0,
                      _filters.heightTo ?? 1000,
                    ),
                    min: 0,
                    max: 1000,
                    divisions: 100,
                    labels: RangeLabels(
                      l10n.filtersSheetHeightCm(
                          '${_filters.heightFrom?.toInt() ?? 0}'),
                      l10n.filtersSheetHeightCm(
                          '${_filters.heightTo?.toInt() ?? 1000}'),
                    ),
                    onChanged: (values) => setState(() {
                      _filters = _filters.copyWith(
                        heightFrom: values.start,
                        heightTo: values.end,
                      );
                    }),
                  ),
                  const SizedBox(height: 16),
                  ZButton.gradient1(
                    onPressed: filtersState.status == FiltersStatus.loading
                        ? null
                        : () => _apply(filtersState),
                    child: Text(l10n.filtersSheetApply),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTabSelectors(
      BuildContext context, PlantFiltersState filtersState) {
    final l10n = context.l10n;
    final moistureLabels =
        filtersState.soilMoistureChoices.map((e) => e.label).toList();
    final moistureValues =
        filtersState.soilMoistureChoices.map((e) => e.value).toList();
    final phLabels = filtersState.soilPhChoices.map((e) => e.label).toList();
    final phValues = filtersState.soilPhChoices.map((e) => e.value).toList();
    final isEnabled = filtersState.status == FiltersStatus.success;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ZTabSelector(
          title: l10n.filtersSheetMoisture,
          tabs: moistureLabels,
          selectedIndex:
              _selectedIndex(moistureValues, filtersState.soilMoistureValue),
          onSelected: isEnabled
              ? (i) => context.read<PlantFiltersCubit>().setSoilMoistureValue(
                    i == null ? null : moistureValues[i],
                  )
              : (_) {},
        ),
        const SizedBox(height: 16),
        ZTabSelector(
          title: l10n.filtersSheetPh,
          tabs: phLabels,
          selectedIndex: _selectedIndex(phValues, filtersState.soilPhValue),
          onSelected: isEnabled
              ? (i) => context.read<PlantFiltersCubit>().setSoilPhValue(
                    i == null ? null : phValues[i],
                  )
              : (_) {},
        ),
      ],
    );
  }
}
