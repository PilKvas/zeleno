// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_search_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantSearchItemDtoImpl _$$PlantSearchItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PlantSearchItemDtoImpl(
      slug: json['slug'] as String,
      latinName: json['latin_name'] as String?,
      mainCommonName: json['main_common_name'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$PlantSearchItemDtoImplToJson(
        _$PlantSearchItemDtoImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      if (instance.latinName case final value?) 'latin_name': value,
      if (instance.mainCommonName case final value?) 'main_common_name': value,
      if (instance.imageUrl case final value?) 'image_url': value,
    };
