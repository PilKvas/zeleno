import 'package:flutter_test/flutter_test.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/plant_note_model.dart';

void main() {
  test('parses PlantNoteDetailSchema json', () {
    final PlantNoteModel note = PlantNoteModel.fromJson(<String, dynamic>{
      'id': 42,
      'plant_id': 7,
      'title': 'Первый полив после пересадки',
      'content': 'Полил умеренно.',
      'created_at': '2026-09-10T12:00:00Z',
      'updated_at': '2026-09-11T08:30:00Z',
    });

    expect(note.id, 42);
    expect(note.plantId, 7);
    expect(note.title, 'Первый полив после пересадки');
    expect(note.content, 'Полил умеренно.');
    expect(note.createdAt, DateTime.utc(2026, 9, 10, 12));
    expect(note.updatedAt, DateTime.utc(2026, 9, 11, 8, 30));
  });
}
