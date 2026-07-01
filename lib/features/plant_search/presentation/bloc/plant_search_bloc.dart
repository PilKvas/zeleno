import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/plant_filters/domain/models/plant_search_filters.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/plant_search_item.dart';
import 'package:zeleno_v2/features/plant_search/domain/usecases/plants_search_usecase.dart';

part 'plant_search_bloc.freezed.dart';
part 'plant_search_event.dart';
part 'plant_search_state.dart';

class PlantSearchBloc extends Bloc<PlantSearchEvent, PlantSearchState> {
  final PlantsSearchUsecase _plantsSearchUsecase;

  PlantSearchBloc(this._plantsSearchUsecase)
      : super(
          const PlantSearchState(),
        ) {
    on<_LoadPlantList>(
      (event, emit) async {
        if (state.hasReachedEnd && !event.refresh) return;

        var page = (state.items.length ~/ 20) + 1;
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
          name: nextName,
          pageSize: 20,
          soilMoisture: nextFilters.soilMoisture,
          soilPh: nextFilters.soilPh,
        );

        emit(
          state.copyWith(
              status: Status.success,
              items: event.refresh ? plantList : [...state.items, ...plantList],
              name: nextName,
              filters: nextFilters,
              hasReachedEnd:
                  plantList.length < 20 // TODO(darbinyan): Вынести в константы,
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
