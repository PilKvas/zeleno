import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/plant_search_filters.dart';
import 'package:zeleno_v2/features/plant_search/presentation/bloc/plant_search_bloc.dart';

class PlantSearchFiltersSheet extends StatefulWidget {
  final PlantSearchBloc bloc;

  const PlantSearchFiltersSheet({
    super.key,
    required this.bloc,
  });

  @override
  State<PlantSearchFiltersSheet> createState() => _PlantSearchFiltersSheetState();
}

class _PlantSearchFiltersSheetState extends State<PlantSearchFiltersSheet> {
  late PlantSearchFilters _filters;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _filters = widget.bloc.state.filters;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantSearchBloc, PlantSearchState>(
      bloc: widget.bloc,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Фильтры',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (state.filters.hasActiveFilters)
                    TextButton(
                      onPressed: () {
                        widget.bloc.add(
                          const PlantSearchEvent.clearFilters(),
                        );
                        Navigator.pop(context);
                      },
                      child: const Text('Сбросить'),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Диапазон роста (см)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              RangeSlider(
                values: RangeValues(
                  _filters.heightFrom ?? 0,
                  _filters.heightTo ?? 1000,
                ),
                min: 0,
                max: 1000,
                divisions: 100,
                labels: RangeLabels(
                  '${_filters.heightFrom?.toInt() ?? 0} см',
                  '${_filters.heightTo?.toInt() ?? 1000} см',
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _filters = _filters.copyWith(
                      heightFrom: values.start,
                      heightTo: values.end,
                    );
                  });
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  widget.bloc.add(
                    PlantSearchEvent.applyFilters(filters: _filters),
                  );
                  Navigator.pop(context);
                },
                child: const Text('Применить'),
              ),
            ],
          ),
        );
      },
    );
  }
}
