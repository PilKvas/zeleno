import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_note_model.freezed.dart';
part 'plant_note_model.g.dart';

/// Заметка к растению сада (`PlantNoteDetailSchema`).
@freezed
class PlantNoteModel with _$PlantNoteModel {
  const factory PlantNoteModel({
    required int id,
    @JsonKey(name: 'plant_id') required int plantId,
    required String title,
    required String content,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _PlantNoteModel;

  factory PlantNoteModel.fromJson(Map<String, dynamic> json) =>
      _$PlantNoteModelFromJson(json);
}
