part of 'garden_plant_detail_cubit.dart';

@freezed
class GardenPlantDetailState with _$GardenPlantDetailState {
  const factory GardenPlantDetailState({
    required Status status,
    int? plantId,
    String? speciesSlug,
    GardenPlantModel? plant,
    PlantDetailsModel? speciesDetails,
    Object? error,
    @Default(false) bool isSaving,
    @Default(false) bool wasUpdated,
    @Default(false) bool wasDeleted,
  }) = _GardenPlantDetailState;
}
