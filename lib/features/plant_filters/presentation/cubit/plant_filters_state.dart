import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';

part 'plant_filters_state.freezed.dart';

enum FiltersStatus { initial, loading, success, failure }

@freezed
class PlantFiltersState with _$PlantFiltersState {
  const factory PlantFiltersState({
    @Default(FiltersStatus.initial) FiltersStatus status,
    Object? error,
    @Default(<PlantFilterItem>[]) List<PlantFilterItem> soilPhChoices,
    @Default(<PlantFilterItem>[]) List<PlantFilterItem> soilMoistureChoices,
    @Default(PlantSearchFilters()) PlantSearchFilters selected,
  }) = _PlantFiltersState;
}
