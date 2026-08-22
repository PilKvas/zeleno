// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_garden_plant_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateGardenPlantBodyImpl _$$UpdateGardenPlantBodyImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateGardenPlantBodyImpl(
  customName: json['custom_name'] as String,
  roomId: (json['room_id'] as num?)?.toInt(),
  sunlightExposure: json['sunlight_exposure'] as String?,
  plantSize: json['plant_size'] as String?,
  potSizeMm: (json['pot_size_mm'] as num?)?.toInt(),
  lastWatering: json['last_watering'] as String?,
  lastWateringExactDate: json['last_watering_exact_date'] as String?,
  lastRepotting: json['last_repotting'] as String?,
  lastRepottingExactDate: json['last_repotting_exact_date'] as String?,
);

Map<String, dynamic> _$$UpdateGardenPlantBodyImplToJson(
  _$UpdateGardenPlantBodyImpl instance,
) => <String, dynamic>{
  'custom_name': instance.customName,
  'room_id': instance.roomId,
  'sunlight_exposure': instance.sunlightExposure,
  'plant_size': instance.plantSize,
  'pot_size_mm': instance.potSizeMm,
  'last_watering': instance.lastWatering,
  'last_watering_exact_date': instance.lastWateringExactDate,
  'last_repotting': instance.lastRepotting,
  'last_repotting_exact_date': instance.lastRepottingExactDate,
};
