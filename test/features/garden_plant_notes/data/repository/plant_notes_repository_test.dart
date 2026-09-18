import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/features/garden_plant_notes/data/repository/plant_notes_repository.dart';
import 'package:zeleno_v2/features/garden_plant_notes/data/service/plant_notes_service.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/entities/create_plant_note_params.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/entities/update_plant_note_params.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/plant_note_model.dart';

class MockPlantNotesService extends Mock implements PlantNotesService {}

void main() {
  late MockPlantNotesService mockService;
  late PlantNotesRepository repository;

  final PlantNoteModel olderNote = PlantNoteModel(
    id: 1,
    plantId: 7,
    title: 'Old',
    content: 'Old content',
    createdAt: DateTime.utc(2026, 9, 1),
    updatedAt: DateTime.utc(2026, 9, 1),
  );

  final PlantNoteModel newerNote = PlantNoteModel(
    id: 2,
    plantId: 7,
    title: 'New',
    content: 'New content',
    createdAt: DateTime.utc(2026, 9, 5),
    updatedAt: DateTime.utc(2026, 9, 10),
  );

  setUpAll(() {
    registerFallbackValue(<String, dynamic>{});
  });

  setUp(() {
    mockService = MockPlantNotesService();
    repository = PlantNotesRepository(plantNotesService: mockService);
  });

  test('getNotes returns notes sorted by updatedAt desc', () async {
    when(
      () => mockService.getNotes(plantId: 7),
    ).thenAnswer((_) async => <PlantNoteModel>[olderNote, newerNote]);

    final List<PlantNoteModel> notes = await repository.getNotes(plantId: 7);

    expect(notes, <PlantNoteModel>[newerNote, olderNote]);
  });

  test('createNote sends trimmed title and content', () async {
    when(
      () => mockService.createNote(plantId: 7, body: any(named: 'body')),
    ).thenAnswer((_) async => newerNote);

    final PlantNoteModel result = await repository.createNote(
      params: const CreatePlantNoteParams(
        plantId: 7,
        title: '  New  ',
        content: ' New content ',
      ),
    );

    expect(result, newerNote);
    final Map<String, dynamic> body =
        verify(
              () => mockService.createNote(
                plantId: 7,
                body: captureAny(named: 'body'),
              ),
            ).captured.single
            as Map<String, dynamic>;
    expect(body, <String, dynamic>{'title': 'New', 'content': 'New content'});
  });

  test('updateNote sends trimmed fields to the right note', () async {
    when(
      () => mockService.updateNote(
        plantId: 7,
        noteId: 2,
        body: any(named: 'body'),
      ),
    ).thenAnswer((_) async => newerNote);

    await repository.updateNote(
      params: const UpdatePlantNoteParams(
        plantId: 7,
        noteId: 2,
        title: 'New ',
        content: ' New content',
      ),
    );

    final Map<String, dynamic> body =
        verify(
              () => mockService.updateNote(
                plantId: 7,
                noteId: 2,
                body: captureAny(named: 'body'),
              ),
            ).captured.single
            as Map<String, dynamic>;
    expect(body, <String, dynamic>{'title': 'New', 'content': 'New content'});
  });

  test('deleteNote forwards plantId and noteId', () async {
    when(
      () => mockService.deleteNote(plantId: 7, noteId: 2),
    ).thenAnswer((_) async {});

    await repository.deleteNote(plantId: 7, noteId: 2);

    verify(() => mockService.deleteNote(plantId: 7, noteId: 2)).called(1);
  });
}
