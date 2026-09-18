import 'package:zeleno_v2/features/garden_plant_notes/domain/entities/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/export.dart';

abstract interface class IPlantNotesRepository {
  Future<List<PlantNoteModel>> getNotes({required int plantId});

  Future<PlantNoteModel> createNote({required CreatePlantNoteParams params});

  Future<PlantNoteModel> updateNote({required UpdatePlantNoteParams params});

  Future<void> deleteNote({required int plantId, required int noteId});
}
