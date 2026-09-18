import 'package:zeleno_v2/features/garden_plant_notes/data/dto/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/data/service/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/entities/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/repository/export.dart';

final class PlantNotesRepository implements IPlantNotesRepository {
  PlantNotesRepository({required PlantNotesService plantNotesService})
    : _plantNotesService = plantNotesService;

  final PlantNotesService _plantNotesService;

  @override
  Future<List<PlantNoteModel>> getNotes({required int plantId}) async {
    final List<PlantNoteModel> notes = await _plantNotesService.getNotes(
      plantId: plantId,
    );
    // Сервер сортирует по updated_at, но направление не оговорено —
    // новые заметки всегда должны быть сверху.
    return List<PlantNoteModel>.of(notes)
      ..sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
  }

  @override
  Future<PlantNoteModel> createNote({required CreatePlantNoteParams params}) {
    return _plantNotesService.createNote(
      plantId: params.plantId,
      body: CreatePlantNoteBody(
        title: params.title.trim(),
        content: params.content.trim(),
      ).toJson(),
    );
  }

  @override
  Future<PlantNoteModel> updateNote({required UpdatePlantNoteParams params}) {
    return _plantNotesService.updateNote(
      plantId: params.plantId,
      noteId: params.noteId,
      body: UpdatePlantNoteBody(
        title: params.title.trim(),
        content: params.content.trim(),
      ).toJson(),
    );
  }

  @override
  Future<void> deleteNote({required int plantId, required int noteId}) {
    return _plantNotesService.deleteNote(plantId: plantId, noteId: noteId);
  }
}
