// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomModelImpl _$$RoomModelImplFromJson(Map<String, dynamic> json) =>
    _$RoomModelImpl(
      id: (json['id'] as num).toInt(),
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      hemisphere: json['hemisphere'] as String?,
      temperature: (json['temperature'] as num?)?.toInt(),
      humidity: (json['humidity'] as num?)?.toInt(),
      windowSide: json['window_side'] as String?,
    );

Map<String, dynamic> _$$RoomModelImplToJson(_$RoomModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'description': instance.description,
      'hemisphere': instance.hemisphere,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'window_side': instance.windowSide,
    };
