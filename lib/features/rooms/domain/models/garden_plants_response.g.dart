// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'garden_plants_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GardenPlantsResponseImpl _$$GardenPlantsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GardenPlantsResponseImpl(
      id: (json['id'] as num).toInt(),
      latinName: json['latin_name'] as String,
      customName: json['custom_name'] as String?,
    );

Map<String, dynamic> _$$GardenPlantsResponseImplToJson(
        _$GardenPlantsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latin_name': instance.latinName,
      'custom_name': instance.customName,
    };
