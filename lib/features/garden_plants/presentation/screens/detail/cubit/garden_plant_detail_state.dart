part of 'garden_plant_detail_cubit.dart';

@freezed
class GardenPlantDetailState with _$GardenPlantDetailState {
  const factory GardenPlantDetailState({
    required Status status,
    required int plantId,
    GardenPlantModel? plant,
    PlantDetailsModel? speciesDetails,
    Object? error,
    @Default(false) bool isSaving,
    Uint8List? pendingPhotoBytes,
    String? pendingPhotoFileName,
    @Default(false) bool removeExistingPhoto,
    @Default(false) bool wasUpdated,
    @Default(false) bool wasDeleted,
  }) = _GardenPlantDetailState;
}
