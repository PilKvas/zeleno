import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_filters/domain/usecases/export.dart';
import 'plant_filters_state.dart';

final class PlantFiltersCubit extends Cubit<PlantFiltersState> {
  PlantFiltersCubit({
    required PlantFiltersUsecase plantFiltersUsecase,
  })  : _plantFiltersUsecase = plantFiltersUsecase,
        super(const PlantFiltersState());

  final PlantFiltersUsecase _plantFiltersUsecase;

  Future<void> loadChoices() async {
    if (state.status == FiltersStatus.success) return;

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

  void hydrate(PlantSearchFilters filters) {
    emit(state.copyWith(selected: filters));
  }

  void toggleSoilPh(String value) {
    emit(state.copyWith(
      selected: state.selected.copyWith(
        soilPh: _toggled(state.selected.soilPh, value),
      ),
    ));
  }

  void toggleSoilMoisture(String value) {
    emit(state.copyWith(
      selected: state.selected.copyWith(
        soilMoisture: _toggled(state.selected.soilMoisture, value),
      ),
    ));
  }

  void setHeightRange({required double from, required double to}) {
    emit(state.copyWith(
      selected: state.selected.copyWith(heightFrom: from, heightTo: to),
    ));
  }

  void reset() {
    emit(state.copyWith(selected: const PlantSearchFilters()));
  }

  List<String> _toggled(List<String> values, String value) {
    return values.contains(value)
        ? (List<String>.from(values)..remove(value))
        : <String>[...values, value];
  }
}
