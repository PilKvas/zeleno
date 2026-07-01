// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_room_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantRoomDtoImpl _$$PlantRoomDtoImplFromJson(Map<String, dynamic> json) =>
    _$PlantRoomDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      humidityPercent: (json['humidity_percent'] as num?)?.toInt(),
      illuminanceLux: (json['illuminance_lux'] as num?)?.toInt(),
      temperatureCelsius: (json['temperature_celsius'] as num?)?.toDouble(),
      windowDirection: json['window_direction'] as String?,
    );

Map<String, dynamic> _$$PlantRoomDtoImplToJson(_$PlantRoomDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'humidity_percent': instance.humidityPercent,
      'illuminance_lux': instance.illuminanceLux,
      'temperature_celsius': instance.temperatureCelsius,
      'window_direction': instance.windowDirection,
    };
