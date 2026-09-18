import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_plant_note_body.freezed.dart';
part 'create_plant_note_body.g.dart';

/// Тело запроса `POST /api/garden/plants/{plant_id}/notes`.
@freezed
class CreatePlantNoteBody with _$CreatePlantNoteBody {
  const factory CreatePlantNoteBody({
    required String title,
    required String content,
  }) = _CreatePlantNoteBody;

  factory CreatePlantNoteBody.fromJson(Map<String, dynamic> json) =>
      _$CreatePlantNoteBodyFromJson(json);
}
