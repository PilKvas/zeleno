part of 'plant_search_bloc.dart';

@freezed
class PlantSearchEvent with _$PlantSearchEvent {
  const factory PlantSearchEvent.loadPlantList({
    String? name,
    @Default(false) bool refresh,
  }) = _LoadPlantList;
}
