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
  late final PlantSearchBloc _searchBloc;
  late final PlantFiltersCubit _filtersCubit;

  @override
  void initState() {
    super.initState();
    _searchBloc = context.read<PlantSearchBloc>();
    _filtersCubit = context.read<PlantFiltersCubit>();
    _filtersCubit.hydrate(_searchBloc.state.filters);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _filtersCubit.loadChoices();
    });
  }

  void _applySelected(PlantSearchFilters selected) {
    _searchBloc.add(
      PlantSearchEvent.loadPlantList(
        refresh: true,
        name: _searchBloc.state.name,
        filters: selected.copyWith(searchQuery: _searchBloc.state.name),
      ),
    );
    Navigator.pop(context);
  }

  void _reset() {
    _filtersCubit.reset();
    _applySelected(const PlantSearchFilters());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        16,
        16,
        16,
        16 + MediaQuery
            .viewInsetsOf(context)
            .bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _SheetHandle(),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: .center,
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                context.l10n.filtersSheetTitle,
                style: ZTypography
                    .of(context)
                    .headline300,
              ),
              _ResetButton(onReset: _reset)
            ],
          ),
          const SizedBox(height: 16),
          _FiltersForm(onApply: _applySelected),
        ],
      ),
    );
  }
}

class _SheetHandle extends StatelessWidget {
  const _SheetHandle();

  @override
  Widget build(BuildContext context) {
    const double width = 40;
    const double height = 5;
    final ZColorScheme colors = ZColorScheme.of(context);
    return Center(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: colors.secondaryText.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class _ResetButton extends StatelessWidget {
  final VoidCallback onReset;

  const _ResetButton({required this.onReset});

  @override
  Widget build(BuildContext context) {
    final ZTypography typography = ZTypography.of(context);
    final ZColorScheme colors = ZColorScheme.of(context);
    // Кнопка смотрит на форму, а не на уже применённые фильтры:
    // сбрасывать нужно то, что выбрано прямо сейчас.
    return BlocSelector<PlantFiltersCubit, PlantFiltersState, bool>(
      selector: (state) => state.selected.hasActiveFilters,
      builder: (context, hasActive) {
        if (!hasActive) return const SizedBox.shrink();
        return GestureDetector(
          onTap: onReset,
          child: Text(
            context.l10n.filtersSheetReset,
            style: typography.action.copyWith(color: colors.action),
          ),
        );
      },
    );
  }
}

class _FiltersForm extends StatelessWidget {
  final ValueChanged<PlantSearchFilters> onApply;

  const _FiltersForm({required this.onApply});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantFiltersCubit, PlantFiltersState>(
      builder: (context, state) {
        final bool isLoading = state.status == FiltersStatus.loading;
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (isLoading)
              const _ChoicesLoading()
            else
              ...[
                if (state.status == FiltersStatus.failure)
                  const _ChoicesLoadError(),
                _SoilSelectors(state: state),
              ],
            const SizedBox(height: 16),
            _HeightRangeField(selected: state.selected),
            const SizedBox(height: 16),
            ZButton.gradient1(
              onPressed: isLoading ? null : () => onApply(state.selected),
              child: Text(context.l10n.filtersSheetApply),
            ),
          ],
        );
      },
    );
  }
}

class _ChoicesLoading extends StatelessWidget {
  const _ChoicesLoading();

  @override
  Widget build(BuildContext context) {
    const double size = 40;
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: SizedBox(height: size, width: size, child: ZLoading()),
      ),
    );
  }
}

class _ChoicesLoadError extends StatelessWidget {
  const _ChoicesLoadError();

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        context.l10n.filtersSheetLoadError,
        style: ZTypography
            .of(context)
            .body
            .copyWith(color: colors.error),
      ),
    );
  }
}

class _SoilSelectors extends StatelessWidget {
  final PlantFiltersState state;

  const _SoilSelectors({required this.state});

  Set<int> _selectedIndexes(List<String> values, List<String> selected) {
    return <int>{
      for (int i = 0; i < values.length; i++)
        if (selected.contains(values[i])) i,
    };
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<PlantFiltersCubit>();
    final moistureValues =
    state.soilMoistureChoices.map((e) => e.value).toList();
    final phValues = state.soilPhChoices.map((e) => e.value).toList();
    // Пока справочники не загрузились, выбор не должен ничего менять.
    final bool isEnabled = state.status == FiltersStatus.success;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ZTabSelector(
          title: l10n.filtersSheetMoisture,
          tabs: state.soilMoistureChoices.map((e) => e.label).toList(),
          selectedIndexes: _selectedIndexes(
            moistureValues,
            state.selected.soilMoisture,
          ),
          onToggled: isEnabled
              ? (i) => cubit.toggleSoilMoisture(moistureValues[i])
              : (_) {},
        ),
        const SizedBox(height: 16),
        ZTabSelector(
          title: l10n.filtersSheetPh,
          tabs: state.soilPhChoices.map((e) => e.label).toList(),
          selectedIndexes: _selectedIndexes(phValues, state.selected.soilPh),
          onToggled:
          isEnabled ? (i) => cubit.toggleSoilPh(phValues[i]) : (_) {},
        ),
      ],
    );
  }
}

class _HeightRangeField extends StatelessWidget {
  final PlantSearchFilters selected;

  const _HeightRangeField({required this.selected});

  @override
  Widget build(BuildContext context) {
    const int divisions = 100;
    final l10n = context.l10n;
    final double rangeStart =
        selected.heightFrom ?? PlantSearchFilters.minHeight;
    final double rangeEnd = selected.heightTo ?? PlantSearchFilters.maxHeight;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.filtersSheetHeightRange,
          style: ZTypography
              .of(context)
              .title,
        ),
        const SizedBox(height: 4),
        RangeSlider(
          values: RangeValues(rangeStart, rangeEnd),
          min: PlantSearchFilters.minHeight,
          max: PlantSearchFilters.maxHeight,
          divisions: divisions,
          labels: RangeLabels(
            l10n.filtersSheetHeightCm('${rangeStart.toInt()}'),
            l10n.filtersSheetHeightCm('${rangeEnd.toInt()}'),
          ),
          onChanged: (values) =>
              context.read<PlantFiltersCubit>().setHeightRange(
                from: values.start,
                to: values.end,
              ),
        ),
      ],
    );
  }
}
