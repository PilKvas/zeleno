import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/features/plant_filters/domain/models/plant_filter_item.dart';
import 'package:zeleno_v2/features/plant_filters/domain/usecases/plant_filters_usecase.dart';

import 'plant_filters_state.dart';

final class PlantFiltersCubit extends Cubit<PlantFiltersState> {
  PlantFiltersCubit({
    required PlantFiltersUsecase plantFiltersUsecase,
  })  : _plantFiltersUsecase = plantFiltersUsecase,
        super(const PlantFiltersState());

  final PlantFiltersUsecase _plantFiltersUsecase;

  Future<void> loadChoices() async {
    emit(state.copyWith(status: FiltersStatus.loading, error: null));
    try {
      final List<List<PlantFilterItem>> results =
          await Future.wait(<Future<List<PlantFilterItem>>>[
        _plantFiltersUsecase.loadSoilPhChoices(),
        _plantFiltersUsecase.loadSoilMoistureChoices(),
      ]);
      emit(state.copyWith(
        status: FiltersStatus.success,
        error: null,
        soilPhChoices: results[0],
        soilMoistureChoices: results[1],
      ));
    } catch (error) {
      emit(state.copyWith(status: FiltersStatus.failure, error: error));
    }
  }

  void setSoilPhValue(String? value) {
    emit(state.copyWith(soilPhValue: value));
  }

  void setSoilMoistureValue(String? value) {
    emit(state.copyWith(soilMoistureValue: value));
  }

  void hydrateSoilSelections({
    required String? soilPhValue,
    required String? soilMoistureValue,
  }) {
    emit(state.copyWith(
      soilPhValue: soilPhValue,
      soilMoistureValue: soilMoistureValue,
    ));
  }

  void resetSelections() {
    emit(state.copyWith(soilPhValue: null, soilMoistureValue: null));
  }
}
