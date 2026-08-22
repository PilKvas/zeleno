import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/usecases/export.dart';

part 'plant_search_bloc.freezed.dart';
part 'plant_search_event.dart';
part 'plant_search_state.dart';

class PlantSearchBloc extends Bloc<PlantSearchEvent, PlantSearchState> {
  static const int _pageSize = 20;

  final PlantsSearchUsecase _plantsSearchUsecase;

  PlantSearchBloc(this._plantsSearchUsecase)
      : super(
          const PlantSearchState(),
        ) {
    on<_LoadPlantList>(
      (event, emit) async {
        if (state.hasReachedEnd && !event.refresh) return;

        var page = (state.items.length ~/ _pageSize) + 1;
        emit(
          state.copyWith(
            status: Status.loading,
            isPaginating: page != 1 && !event.refresh,
          ),
        );

        if (event.refresh) page = 1;

        final String? nextName = event.name ?? state.name;
        final PlantSearchFilters nextFilters =
            event.filters ?? state.filters.copyWith(searchQuery: nextName);

        final plantList = await _plantsSearchUsecase.loadPlants(
          page: page,
          pageSize: _pageSize,
          filters: nextFilters,
        );

        emit(
          state.copyWith(
            status: Status.success,
            items: event.refresh ? plantList : [...state.items, ...plantList],
            name: nextName,
            filters: nextFilters,
            hasReachedEnd: plantList.length < _pageSize,
          ),
        );
      },
      transformer: droppable(),
    );
  }
}

extension PlantSeachBlocX on BuildContext {
  PlantSearchBloc get readPlantSearchBloc => read<PlantSearchBloc>();
}
