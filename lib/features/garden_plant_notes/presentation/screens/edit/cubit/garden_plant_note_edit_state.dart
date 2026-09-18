part of 'garden_plant_note_edit_cubit.dart';

@freezed
class GardenPlantNoteEditState with _$GardenPlantNoteEditState {
  const factory GardenPlantNoteEditState({
    required Status status,
    required int plantId,
    PlantNoteModel? note,
    @Default('') String title,
    @Default('') String content,
    PlantNoteValidationError? validationError,
    Object? error,
    @Default(false) bool isDeleting,
    @Default(false) bool wasSaved,
    @Default(false) bool wasDeleted,
  }) = _GardenPlantNoteEditState;

  const GardenPlantNoteEditState._();

  bool get isEditMode => note != null;
}
