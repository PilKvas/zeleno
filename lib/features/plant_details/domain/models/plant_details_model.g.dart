// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantDetailsModelImpl _$$PlantDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlantDetailsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      commonNames: (json['common_names'] as List<dynamic>?)
          ?.map((e) => CommonNameEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      cultivation: json['cultivation'] as String?,
      duration: (json['duration'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      edibleParts: (json['edible_parts'] as List<dynamic>?)
          ?.map((e) => NamedSlug.fromJson(e as Map<String, dynamic>))
          .toList(),
      exposure: (json['exposure'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      foliage:
          (json['foliage'] as List<dynamic>?)?.map((e) => e as String).toList(),
      fragrance: (json['fragrance'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      genusDescription: json['genus_description'] as String?,
      growthTips: (json['growth_tips'] as List<dynamic>?)
          ?.map((e) => GrowthTip.fromJson(e as Map<String, dynamic>))
          .toList(),
      habit:
          (json['habit'] as List<dynamic>?)?.map((e) => e as String).toList(),
      hardinessZone: json['hardiness_zone'] as String?,
      harvest:
          (json['harvest'] as List<dynamic>?)?.map((e) => e as String).toList(),
      heightMaxCm: (json['height_max_cm'] as num?)?.toInt(),
      heightMinCm: (json['height_min_cm'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => PlantImageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      isEdible: json['is_edible'] as bool?,
      latinName: json['latin_name'] as String?,
      misc: json['misc'] == null
          ? null
          : PlantMisc.fromJson(json['misc'] as Map<String, dynamic>),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      partsColor: (json['parts_color'] as List<dynamic>?)
          ?.map((e) => PartColorGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      planting: (json['planting'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      positionSide: (json['position_side'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      positionSunlight: (json['position_sunlight'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rating: (json['rating'] as num?)?.toInt(),
      regularEvents: (json['regular_events'] as List<dynamic>?)
          ?.map((e) => RegularEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      slug: json['slug'] as String?,
      soilMoisture: (json['soil_moisture'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      soilPh:
          (json['soil_ph'] as List<dynamic>?)?.map((e) => e as String).toList(),
      soilTypes: (json['soil_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      spreadMaxCm: (json['spread_max_cm'] as num?)?.toInt(),
      spreadMinCm: (json['spread_min_cm'] as num?)?.toInt(),
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      toxicity: (json['toxicity'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      yearsToMaxHeightMax: (json['years_to_max_height_max'] as num?)?.toInt(),
      yearsToMaxHeightMin: (json['years_to_max_height_min'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PlantDetailsModelImplToJson(
        _$PlantDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'common_names': instance.commonNames,
      'created': instance.created?.toIso8601String(),
      'cultivation': instance.cultivation,
      'duration': instance.duration,
      'edible_parts': instance.edibleParts,
      'exposure': instance.exposure,
      'foliage': instance.foliage,
      'fragrance': instance.fragrance,
      'genus_description': instance.genusDescription,
      'growth_tips': instance.growthTips,
      'habit': instance.habit,
      'hardiness_zone': instance.hardinessZone,
      'harvest': instance.harvest,
      'height_max_cm': instance.heightMaxCm,
      'height_min_cm': instance.heightMinCm,
      'image_url': instance.imageUrl,
      'images': instance.images,
      'is_edible': instance.isEdible,
      'latin_name': instance.latinName,
      'misc': instance.misc,
      'modified': instance.modified?.toIso8601String(),
      'parts_color': instance.partsColor,
      'planting': instance.planting,
      'position_side': instance.positionSide,
      'position_sunlight': instance.positionSunlight,
      'rating': instance.rating,
      'regular_events': instance.regularEvents,
      'slug': instance.slug,
      'soil_moisture': instance.soilMoisture,
      'soil_ph': instance.soilPh,
      'soil_types': instance.soilTypes,
      'sources': instance.sources,
      'spread_max_cm': instance.spreadMaxCm,
      'spread_min_cm': instance.spreadMinCm,
      'synonyms': instance.synonyms,
      'tags': instance.tags,
      'toxicity': instance.toxicity,
      'years_to_max_height_max': instance.yearsToMaxHeightMax,
      'years_to_max_height_min': instance.yearsToMaxHeightMin,
    };

_$CommonNameEntryImpl _$$CommonNameEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$CommonNameEntryImpl(
      isMain: json['is_main'] as bool?,
      lang: json['lang'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CommonNameEntryImplToJson(
        _$CommonNameEntryImpl instance) =>
    <String, dynamic>{
      'is_main': instance.isMain,
      'lang': instance.lang,
      'name': instance.name,
    };

_$NamedSlugImpl _$$NamedSlugImplFromJson(Map<String, dynamic> json) =>
    _$NamedSlugImpl(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$NamedSlugImplToJson(_$NamedSlugImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
    };

_$GrowthTipImpl _$$GrowthTipImplFromJson(Map<String, dynamic> json) =>
    _$GrowthTipImpl(
      name: json['name'] as String?,
      tipType: json['tip_type'] as String?,
    );

Map<String, dynamic> _$$GrowthTipImplToJson(_$GrowthTipImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tip_type': instance.tipType,
    };

_$PlantImageItemImpl _$$PlantImageItemImplFromJson(Map<String, dynamic> json) =>
    _$PlantImageItemImpl(
      imageCopyright: json['image_copyright'] as String?,
      imageUrl: json['image_url'] as String?,
      part: json['part'] == null
          ? null
          : NamedSlug.fromJson(json['part'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlantImageItemImplToJson(
        _$PlantImageItemImpl instance) =>
    <String, dynamic>{
      'image_copyright': instance.imageCopyright,
      'image_url': instance.imageUrl,
      'part': instance.part,
    };

_$ColorEntryImpl _$$ColorEntryImplFromJson(Map<String, dynamic> json) =>
    _$ColorEntryImpl(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$ColorEntryImplToJson(_$ColorEntryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
    };

_$PartColorGroupImpl _$$PartColorGroupImplFromJson(Map<String, dynamic> json) =>
    _$PartColorGroupImpl(
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => ColorEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      part: json['part'] == null
          ? null
          : NamedSlug.fromJson(json['part'] as Map<String, dynamic>),
      season:
          (json['season'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PartColorGroupImplToJson(
        _$PartColorGroupImpl instance) =>
    <String, dynamic>{
      'colors': instance.colors,
      'part': instance.part,
      'season': instance.season,
    };

_$PathogenItemImpl _$$PathogenItemImplFromJson(Map<String, dynamic> json) =>
    _$PathogenItemImpl(
      name: json['name'] as String?,
      pathogenType: json['pathogen_type'] as String?,
    );

Map<String, dynamic> _$$PathogenItemImplToJson(_$PathogenItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pathogen_type': instance.pathogenType,
    };

_$RegularEventImpl _$$RegularEventImplFromJson(Map<String, dynamic> json) =>
    _$RegularEventImpl(
      intervalMax: (json['interval_max'] as num?)?.toInt(),
      intervalMin: (json['interval_min'] as num?)?.toInt(),
      intervalUnit: json['interval_unit'] as String?,
      name: json['name'] as String?,
      repetitionCount: (json['repetition_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegularEventImplToJson(_$RegularEventImpl instance) =>
    <String, dynamic>{
      'interval_max': instance.intervalMax,
      'interval_min': instance.intervalMin,
      'interval_unit': instance.intervalUnit,
      'name': instance.name,
      'repetition_count': instance.repetitionCount,
    };

_$PlantMiscImpl _$$PlantMiscImplFromJson(Map<String, dynamic> json) =>
    _$PlantMiscImpl(
      rank: json['rank'] as String?,
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PlantMiscImplToJson(_$PlantMiscImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'year': instance.year,
    };

_$SynonymItemImpl _$$SynonymItemImplFromJson(Map<String, dynamic> json) =>
    _$SynonymItemImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$SynonymItemImplToJson(_$SynonymItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$PlantTagImpl _$$PlantTagImplFromJson(Map<String, dynamic> json) =>
    _$PlantTagImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PlantTagImplToJson(_$PlantTagImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$SourceImpl _$$SourceImplFromJson(Map<String, dynamic> json) => _$SourceImpl(
      lastUpdate: json['last_update'] == null
          ? null
          : DateTime.parse(json['last_update'] as String),
      sid: json['sid'] as String?,
      name: json['name'] as String?,
      sourceUrl: json['source_url'] as String?,
      citation: json['citation'] as String?,
    );

Map<String, dynamic> _$$SourceImplToJson(_$SourceImpl instance) =>
    <String, dynamic>{
      'last_update': instance.lastUpdate?.toIso8601String(),
      'sid': instance.sid,
      'name': instance.name,
      'source_url': instance.sourceUrl,
      'citation': instance.citation,
    };
