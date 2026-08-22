// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_garden_room_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateGardenRoomBodyImpl _$$UpdateGardenRoomBodyImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateGardenRoomBodyImpl(
  name: json['name'] as String,
  temperatureCelsius: (json['temperature_celsius'] as num?)?.toDouble(),
  humidityPercent: (json['humidity_percent'] as num?)?.toInt(),
  illuminanceLux: (json['illuminance_lux'] as num?)?.toInt(),
  windowDirection: json['window_direction'] as String?,
);

Map<String, dynamic> _$$UpdateGardenRoomBodyImplToJson(
  _$UpdateGardenRoomBodyImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'temperature_celsius': instance.temperatureCelsius,
  'humidity_percent': instance.humidityPercent,
  'illuminance_lux': instance.illuminanceLux,
  'window_direction': instance.windowDirection,
};
