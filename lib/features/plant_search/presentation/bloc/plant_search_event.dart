part of 'plant_search_bloc.dart';

@freezed
class PlantSearchEvent with _$PlantSearchEvent {
  const factory PlantSearchEvent.loadPlantList({
    String? name,
    @Default(false) bool refresh,
  }) = _LoadPlantList;

  const factory PlantSearchEvent.applyFilters({
    required PlantSearchFilters filters,
  }) = _ApplyFilters;

  const factory PlantSearchEvent.clearFilters() = _ClearFilters;
}
