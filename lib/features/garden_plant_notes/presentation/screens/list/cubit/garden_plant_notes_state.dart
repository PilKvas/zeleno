part of 'garden_plant_notes_cubit.dart';

@freezed
class GardenPlantNotesState with _$GardenPlantNotesState {
  const factory GardenPlantNotesState({
    required Status status,
    required int plantId,
    @Default(<PlantNoteModel>[]) List<PlantNoteModel> notes,
    Object? error,
  }) = _GardenPlantNotesState;
}
