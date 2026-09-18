import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_plant_note_body.freezed.dart';
part 'update_plant_note_body.g.dart';

/// Тело запроса `PATCH /api/garden/plants/{plant_id}/notes/{note_id}`.
@freezed
class UpdatePlantNoteBody with _$UpdatePlantNoteBody {
  const factory UpdatePlantNoteBody({
    required String title,
    required String content,
  }) = _UpdatePlantNoteBody;

  factory UpdatePlantNoteBody.fromJson(Map<String, dynamic> json) =>
      _$UpdatePlantNoteBodyFromJson(json);
}
