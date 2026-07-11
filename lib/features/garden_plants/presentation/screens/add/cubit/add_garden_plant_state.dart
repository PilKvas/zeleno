part of 'add_garden_plant_cubit.dart';

@freezed
class AddGardenPlantState with _$AddGardenPlantState {
  const factory AddGardenPlantState({
    required Status status,
    required int speciesId,
    required int roomId,
    int? plantId,
    GardenPlantModel? editingPlant,
    @Default('') String customName,
    Uint8List? photoBytes,
    String? photoFileName,
    String? existingImageUrl,
    @Default(false) bool removeExistingPhoto,
    Object? error,
    AddGardenPlantValidationError? validationError,
    GardenPlantModel? createdPlant,
    @Default(false) bool imageUploadFailed,
    @Default(false) bool wasUpdated,
  }) = _AddGardenPlantState;
}
