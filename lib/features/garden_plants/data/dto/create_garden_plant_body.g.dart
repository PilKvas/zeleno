// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_garden_plant_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateGardenPlantBodyImpl _$$CreateGardenPlantBodyImplFromJson(
  Map<String, dynamic> json,
) => _$CreateGardenPlantBodyImpl(
  speciesId: (json['species_id'] as num).toInt(),
  customName: json['custom_name'] as String,
  roomId: (json['room_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$$CreateGardenPlantBodyImplToJson(
  _$CreateGardenPlantBodyImpl instance,
) => <String, dynamic>{
  'species_id': instance.speciesId,
  'custom_name': instance.customName,
  'room_id': instance.roomId,
};
