// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantNoteModelImpl _$$PlantNoteModelImplFromJson(Map<String, dynamic> json) =>
    _$PlantNoteModelImpl(
      id: (json['id'] as num).toInt(),
      plantId: (json['plant_id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PlantNoteModelImplToJson(
  _$PlantNoteModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'plant_id': instance.plantId,
  'title': instance.title,
  'content': instance.content,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
