// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'garden_plant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GardenPlantModelImpl _$$GardenPlantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GardenPlantModelImpl(
      id: (json['id'] as num).toInt(),
      customName: json['custom_name'] as String,
      speciesId: (json['species_id'] as num?)?.toInt(),
      speciesSlug: json['species_slug'] as String?,
      speciesLatinName: json['species_latin_name'] as String?,
      roomId: (json['room_id'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      sunlightExposure: json['sunlight_exposure'] as String?,
      plantSize: json['plant_size'] as String?,
      potSizeMm: (json['pot_size_mm'] as num?)?.toInt(),
      lastWatering: json['last_watering'] as String?,
      lastWateringExactDate: json['last_watering_exact_date'] as String?,
      lastRepotting: json['last_repotting'] as String?,
      lastRepottingExactDate: json['last_repotting_exact_date'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$GardenPlantModelImplToJson(
        _$GardenPlantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'custom_name': instance.customName,
      'species_id': instance.speciesId,
      'species_slug': instance.speciesSlug,
      'species_latin_name': instance.speciesLatinName,
      'room_id': instance.roomId,
      'image_url': instance.imageUrl,
      'sunlight_exposure': instance.sunlightExposure,
      'plant_size': instance.plantSize,
      'pot_size_mm': instance.potSizeMm,
      'last_watering': instance.lastWatering,
      'last_watering_exact_date': instance.lastWateringExactDate,
      'last_repotting': instance.lastRepotting,
      'last_repotting_exact_date': instance.lastRepottingExactDate,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
