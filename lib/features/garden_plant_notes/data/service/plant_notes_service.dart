import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/export.dart';

part 'plant_notes_service.g.dart';

@RestApi()
abstract class PlantNotesService {
  factory PlantNotesService(Dio dio) = _PlantNotesService;

  @GET('/api/garden/plants/{plant_id}/notes')
  Future<List<PlantNoteModel>> getNotes({
    @Path('plant_id') required int plantId,
  });

  @POST('/api/garden/plants/{plant_id}/notes')
  Future<PlantNoteModel> createNote({
    @Path('plant_id') required int plantId,
    @Body() required Map<String, dynamic> body,
  });

  @PATCH('/api/garden/plants/{plant_id}/notes/{note_id}')
  Future<PlantNoteModel> updateNote({
    @Path('plant_id') required int plantId,
    @Path('note_id') required int noteId,
    @Body() required Map<String, dynamic> body,
  });

  @DELETE('/api/garden/plants/{plant_id}/notes/{note_id}')
  Future<void> deleteNote({
    @Path('plant_id') required int plantId,
    @Path('note_id') required int noteId,
  });
}
