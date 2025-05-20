// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantDetailsModelImpl _$$PlantDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlantDetailsModelImpl(
      mainCommonName: json['main_common_name'] as String?,
      id: (json['id'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      commonNames: (json['common_names'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      pathogens: json['pathogens'] == null
          ? null
          : Pathogens.fromJson(json['pathogens'] as Map<String, dynamic>),
      growthTips: json['growth_tips'] == null
          ? null
          : GrowthTips.fromJson(json['growth_tips'] as Map<String, dynamic>),
      distributions: (json['distributions'] as List<dynamic>?)
          ?.map((e) => Distribution.fromJson(e as Map<String, dynamic>))
          .toList(),
      regularEvents: (json['regular_events'] as List<dynamic>?)
          ?.map((e) => RegularEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      partsColor: json['parts_color'] == null
          ? null
          : PartsColor.fromJson(json['parts_color'] as Map<String, dynamic>),
      exposure: json['exposure'] == null
          ? null
          : Exposure.fromJson(json['exposure'] as Map<String, dynamic>),
      duration: json['duration'],
      ediblePart: json['edible_part'] as List<dynamic>?,
      soilType: (json['soil_type'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      soilMoisture: (json['soil_moisture'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      soilPh: (json['soil_ph'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      positionSunlight: (json['position_sunlight'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      positionSide: (json['position_side'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      fragrance: (json['fragrance'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      harvest: (json['harvest'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      planting: (json['planting'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      toxicity: (json['toxicity'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      foliage: (json['foliage'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      habit: (json['habit'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      heightCm: json['height_cm'] == null
          ? null
          : HeightCm.fromJson(json['height_cm'] as Map<String, dynamic>),
      yearsToMaxHeight: json['years_to_max_height'] == null
          ? null
          : HeightCm.fromJson(
              json['years_to_max_height'] as Map<String, dynamic>),
      spreadCm: json['spread_cm'] == null
          ? null
          : HeightCm.fromJson(json['spread_cm'] as Map<String, dynamic>),
      scientificClassification: json['scientific_classification'] == null
          ? null
          : ScientificClassification.fromJson(
              json['scientific_classification'] as Map<String, dynamic>),
      slug: json['slug'] as String?,
      latinName: json['latin_name'] as String?,
      imageUrl: json['image_url'] as String?,
      genusDescription: json['genus_description'] as String?,
      edible: json['edible'],
      rating: (json['rating'] as num?)?.toInt(),
      cultivation: json['cultivation'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      misc: json['misc'] == null
          ? null
          : Misc.fromJson(json['misc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlantDetailsModelImplToJson(
        _$PlantDetailsModelImpl instance) =>
    <String, dynamic>{
      'main_common_name': instance.mainCommonName,
      'id': instance.id,
      'tags': instance.tags,
      'synonyms': instance.synonyms,
      'sources': instance.sources,
      'common_names': instance.commonNames,
      'images': instance.images,
      'pathogens': instance.pathogens,
      'growth_tips': instance.growthTips,
      'distributions': instance.distributions,
      'regular_events': instance.regularEvents,
      'parts_color': instance.partsColor,
      'exposure': instance.exposure,
      'duration': instance.duration,
      'edible_part': instance.ediblePart,
      'soil_type': instance.soilType,
      'soil_moisture': instance.soilMoisture,
      'soil_ph': instance.soilPh,
      'position_sunlight': instance.positionSunlight,
      'position_side': instance.positionSide,
      'fragrance': instance.fragrance,
      'harvest': instance.harvest,
      'planting': instance.planting,
      'toxicity': instance.toxicity,
      'foliage': instance.foliage,
      'habit': instance.habit,
      'height_cm': instance.heightCm,
      'years_to_max_height': instance.yearsToMaxHeight,
      'spread_cm': instance.spreadCm,
      'scientific_classification': instance.scientificClassification,
      'slug': instance.slug,
      'latin_name': instance.latinName,
      'image_url': instance.imageUrl,
      'genus_description': instance.genusDescription,
      'edible': instance.edible,
      'rating': instance.rating,
      'cultivation': instance.cultivation,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
      'misc': instance.misc,
    };

_$DistributionImpl _$$DistributionImplFromJson(Map<String, dynamic> json) =>
    _$DistributionImpl(
      statuses: (json['statuses'] as List<dynamic>?)
          ?.map((e) => Exposure.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      tdwgCode: json['tdwg_code'] as String?,
      tdwgLevel: (json['tdwg_level'] as num?)?.toInt(),
      speciesCount: (json['species_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DistributionImplToJson(_$DistributionImpl instance) =>
    <String, dynamic>{
      'statuses': instance.statuses,
      'name': instance.name,
      'tdwg_code': instance.tdwgCode,
      'tdwg_level': instance.tdwgLevel,
      'species_count': instance.speciesCount,
    };

_$ExposureImpl _$$ExposureImplFromJson(Map<String, dynamic> json) =>
    _$ExposureImpl(
      value: json['value'] as String?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$ExposureImplToJson(_$ExposureImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
    };

_$GrowthTipsImpl _$$GrowthTipsImplFromJson(Map<String, dynamic> json) =>
    _$GrowthTipsImpl(
      propagation: (json['propagation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      suggestedPantingPlaces:
          (json['suggested_panting_places'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      pruning: json['pruning'] as List<dynamic>?,
    );

Map<String, dynamic> _$$GrowthTipsImplToJson(_$GrowthTipsImpl instance) =>
    <String, dynamic>{
      'propagation': instance.propagation,
      'suggested_panting_places': instance.suggestedPantingPlaces,
      'pruning': instance.pruning,
    };

_$HeightCmImpl _$$HeightCmImplFromJson(Map<String, dynamic> json) =>
    _$HeightCmImpl(
      fromValue: (json['from_value'] as num?)?.toInt(),
      toValue: (json['to_value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$HeightCmImplToJson(_$HeightCmImpl instance) =>
    <String, dynamic>{
      'from_value': instance.fromValue,
      'to_value': instance.toValue,
    };

_$ImagesImpl _$$ImagesImplFromJson(Map<String, dynamic> json) => _$ImagesImpl(
      bark: (json['bark'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      fruit: (json['fruit'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      flower: (json['flower'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      habit: (json['habit'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      leaf: (json['leaf'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      other: (json['other'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      root: (json['root'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      stem: (json['stem'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      seed: (json['seed'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      tuber: (json['tuber'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      foliage: (json['foliage'] as List<dynamic>?)
          ?.map((e) => ImagesBark.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ImagesImplToJson(_$ImagesImpl instance) =>
    <String, dynamic>{
      'bark': instance.bark,
      'fruit': instance.fruit,
      'flower': instance.flower,
      'habit': instance.habit,
      'leaf': instance.leaf,
      'other': instance.other,
      'root': instance.root,
      'stem': instance.stem,
      'seed': instance.seed,
      'tuber': instance.tuber,
      'foliage': instance.foliage,
    };

_$ImagesBarkImpl _$$ImagesBarkImplFromJson(Map<String, dynamic> json) =>
    _$ImagesBarkImpl(
      imageUrl: json['image_url'] as String?,
      imageCopyright: json['image_copyright'] as String?,
    );

Map<String, dynamic> _$$ImagesBarkImplToJson(_$ImagesBarkImpl instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'image_copyright': instance.imageCopyright,
    };

_$MiscImpl _$$MiscImplFromJson(Map<String, dynamic> json) => _$MiscImpl(
      rank: json['rank'] as String?,
      slug: json['slug'] as String?,
      year: (json['year'] as num?)?.toInt(),
      genus: json['genus'] as String?,
      author: json['author'] as String?,
      family: json['family'] as String?,
      flower: json['flower'] == null
          ? null
          : Flower.fromJson(json['flower'] as Map<String, dynamic>),
      growth: json['growth'] == null
          ? null
          : Growth.fromJson(json['growth'] as Map<String, dynamic>),
      status: json['status'] as String?,
      foliage: json['foliage'] == null
          ? null
          : Foliage.fromJson(json['foliage'] as Map<String, dynamic>),
      vegetable: json['vegetable'],
      commonName: json['common_name'] as String?,
      bibliography: json['bibliography'] as String?,
      observations: json['observations'] as String?,
      fruitOrSeed: json['fruit_or_seed'] == null
          ? null
          : FruitOrSeed.fromJson(json['fruit_or_seed'] as Map<String, dynamic>),
      specifications: json['specifications'] == null
          ? null
          : Specifications.fromJson(
              json['specifications'] as Map<String, dynamic>),
      scientificName: json['scientific_name'] as String?,
      familyCommonName: json['family_common_name'],
    );

Map<String, dynamic> _$$MiscImplToJson(_$MiscImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'slug': instance.slug,
      'year': instance.year,
      'genus': instance.genus,
      'author': instance.author,
      'family': instance.family,
      'flower': instance.flower,
      'growth': instance.growth,
      'status': instance.status,
      'foliage': instance.foliage,
      'vegetable': instance.vegetable,
      'common_name': instance.commonName,
      'bibliography': instance.bibliography,
      'observations': instance.observations,
      'fruit_or_seed': instance.fruitOrSeed,
      'specifications': instance.specifications,
      'scientific_name': instance.scientificName,
      'family_common_name': instance.familyCommonName,
    };

_$FlowerImpl _$$FlowerImplFromJson(Map<String, dynamic> json) => _$FlowerImpl(
      color: json['color'],
      conspicuous: json['conspicuous'],
    );

Map<String, dynamic> _$$FlowerImplToJson(_$FlowerImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'conspicuous': instance.conspicuous,
    };

_$FoliageImpl _$$FoliageImplFromJson(Map<String, dynamic> json) =>
    _$FoliageImpl(
      color: json['color'],
      texture: json['texture'],
      leafRetention: json['leaf_retention'],
    );

Map<String, dynamic> _$$FoliageImplToJson(_$FoliageImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'texture': instance.texture,
      'leaf_retention': instance.leafRetention,
    };

_$FruitOrSeedImpl _$$FruitOrSeedImplFromJson(Map<String, dynamic> json) =>
    _$FruitOrSeedImpl(
      color: json['color'],
      shape: json['shape'],
      conspicuous: json['conspicuous'],
      seedPersistence: json['seed_persistence'],
    );

Map<String, dynamic> _$$FruitOrSeedImplToJson(_$FruitOrSeedImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'shape': instance.shape,
      'conspicuous': instance.conspicuous,
      'seed_persistence': instance.seedPersistence,
    };

_$GrowthImpl _$$GrowthImplFromJson(Map<String, dynamic> json) => _$GrowthImpl(
      light: json['light'],
      sowing: json['sowing'],
      spread: json['spread'] == null
          ? null
          : MinimumRootDepth.fromJson(json['spread'] as Map<String, dynamic>),
      phMaximum: json['ph_maximum'],
      phMinimum: json['ph_minimum'],
      description: json['description'],
      rowSpacing: json['row_spacing'] == null
          ? null
          : MinimumRootDepth.fromJson(
              json['row_spacing'] as Map<String, dynamic>),
      bloomMonths: json['bloom_months'],
      fruitMonths: json['fruit_months'],
      soilTexture: json['soil_texture'],
      growthMonths: json['growth_months'],
      soilHumidity: json['soil_humidity'],
      soilSalinity: json['soil_salinity'],
      daysToHarvest: json['days_to_harvest'],
      soilNutriments: json['soil_nutriments'],
      minimumRootDepth: json['minimum_root_depth'] == null
          ? null
          : MinimumRootDepth.fromJson(
              json['minimum_root_depth'] as Map<String, dynamic>),
      maximumTemperature: json['maximum_temperature'] == null
          ? null
          : ImumTemperature.fromJson(
              json['maximum_temperature'] as Map<String, dynamic>),
      minimumTemperature: json['minimum_temperature'] == null
          ? null
          : ImumTemperature.fromJson(
              json['minimum_temperature'] as Map<String, dynamic>),
      atmosphericHumidity: json['atmospheric_humidity'],
      maximumPrecipitation: json['maximum_precipitation'] == null
          ? null
          : ImumPrecipitation.fromJson(
              json['maximum_precipitation'] as Map<String, dynamic>),
      minimumPrecipitation: json['minimum_precipitation'] == null
          ? null
          : ImumPrecipitation.fromJson(
              json['minimum_precipitation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GrowthImplToJson(_$GrowthImpl instance) =>
    <String, dynamic>{
      'light': instance.light,
      'sowing': instance.sowing,
      'spread': instance.spread,
      'ph_maximum': instance.phMaximum,
      'ph_minimum': instance.phMinimum,
      'description': instance.description,
      'row_spacing': instance.rowSpacing,
      'bloom_months': instance.bloomMonths,
      'fruit_months': instance.fruitMonths,
      'soil_texture': instance.soilTexture,
      'growth_months': instance.growthMonths,
      'soil_humidity': instance.soilHumidity,
      'soil_salinity': instance.soilSalinity,
      'days_to_harvest': instance.daysToHarvest,
      'soil_nutriments': instance.soilNutriments,
      'minimum_root_depth': instance.minimumRootDepth,
      'maximum_temperature': instance.maximumTemperature,
      'minimum_temperature': instance.minimumTemperature,
      'atmospheric_humidity': instance.atmosphericHumidity,
      'maximum_precipitation': instance.maximumPrecipitation,
      'minimum_precipitation': instance.minimumPrecipitation,
    };

_$ImumPrecipitationImpl _$$ImumPrecipitationImplFromJson(
        Map<String, dynamic> json) =>
    _$ImumPrecipitationImpl(
      mm: json['mm'],
    );

Map<String, dynamic> _$$ImumPrecipitationImplToJson(
        _$ImumPrecipitationImpl instance) =>
    <String, dynamic>{
      'mm': instance.mm,
    };

_$ImumTemperatureImpl _$$ImumTemperatureImplFromJson(
        Map<String, dynamic> json) =>
    _$ImumTemperatureImpl(
      degC: json['deg_c'],
      degF: json['deg_f'],
    );

Map<String, dynamic> _$$ImumTemperatureImplToJson(
        _$ImumTemperatureImpl instance) =>
    <String, dynamic>{
      'deg_c': instance.degC,
      'deg_f': instance.degF,
    };

_$MinimumRootDepthImpl _$$MinimumRootDepthImplFromJson(
        Map<String, dynamic> json) =>
    _$MinimumRootDepthImpl(
      cm: json['cm'],
    );

Map<String, dynamic> _$$MinimumRootDepthImplToJson(
        _$MinimumRootDepthImpl instance) =>
    <String, dynamic>{
      'cm': instance.cm,
    };

_$SpecificationsImpl _$$SpecificationsImplFromJson(Map<String, dynamic> json) =>
    _$SpecificationsImpl(
      toxicity: json['toxicity'],
      growthForm: json['growth_form'],
      growthRate: json['growth_rate'],
      growthHabit: json['growth_habit'],
      ligneousType: json['ligneous_type'],
      averageHeight: json['average_height'] == null
          ? null
          : MinimumRootDepth.fromJson(
              json['average_height'] as Map<String, dynamic>),
      maximumHeight: json['maximum_height'] == null
          ? null
          : MinimumRootDepth.fromJson(
              json['maximum_height'] as Map<String, dynamic>),
      nitrogenFixation: json['nitrogen_fixation'],
      shapeAndOrientation: json['shape_and_orientation'],
    );

Map<String, dynamic> _$$SpecificationsImplToJson(
        _$SpecificationsImpl instance) =>
    <String, dynamic>{
      'toxicity': instance.toxicity,
      'growth_form': instance.growthForm,
      'growth_rate': instance.growthRate,
      'growth_habit': instance.growthHabit,
      'ligneous_type': instance.ligneousType,
      'average_height': instance.averageHeight,
      'maximum_height': instance.maximumHeight,
      'nitrogen_fixation': instance.nitrogenFixation,
      'shape_and_orientation': instance.shapeAndOrientation,
    };

_$PartsColorImpl _$$PartsColorImplFromJson(Map<String, dynamic> json) =>
    _$PartsColorImpl(
      bark: (json['bark'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      fruit: (json['fruit'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      flower: (json['flower'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      habit: (json['habit'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      leaf: (json['leaf'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      other: (json['other'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      root: (json['root'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      stem: (json['stem'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      seed: (json['seed'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      tuber: (json['tuber'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
      foliage: (json['foliage'] as List<dynamic>?)
          ?.map((e) => PartsColorBark.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PartsColorImplToJson(_$PartsColorImpl instance) =>
    <String, dynamic>{
      'bark': instance.bark,
      'fruit': instance.fruit,
      'flower': instance.flower,
      'habit': instance.habit,
      'leaf': instance.leaf,
      'other': instance.other,
      'root': instance.root,
      'stem': instance.stem,
      'seed': instance.seed,
      'tuber': instance.tuber,
      'foliage': instance.foliage,
    };

_$PartsColorBarkImpl _$$PartsColorBarkImplFromJson(Map<String, dynamic> json) =>
    _$PartsColorBarkImpl(
      season: json['season'] == null
          ? null
          : Exposure.fromJson(json['season'] as Map<String, dynamic>),
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ZColorEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$PartsColorBarkImplToJson(
        _$PartsColorBarkImpl instance) =>
    <String, dynamic>{
      'season': instance.season,
      'colors': instance.colors?.map((e) => _$ZColorEnumMap[e]!).toList(),
    };

const _$ZColorEnumMap = {
  ZColor.GREEN: 'Green',
  ZColor.BLUE: 'Blue',
  ZColor.BLACK: 'Black',
  ZColor.ORANGE: 'Orange',
  ZColor.RED: 'Red',
  ZColor.WHITE: 'White',
  ZColor.CREAM: 'Cream',
  ZColor.PINK: 'Pink',
  ZColor.PURPLE: 'Purple',
  ZColor.YELLOW: 'Yellow',
};

_$PathogensImpl _$$PathogensImplFromJson(Map<String, dynamic> json) =>
    _$PathogensImpl(
      disease:
          (json['disease'] as List<dynamic>?)?.map((e) => e as String).toList(),
      pest: json['pest'] as List<dynamic>?,
    );

Map<String, dynamic> _$$PathogensImplToJson(_$PathogensImpl instance) =>
    <String, dynamic>{
      'disease': instance.disease,
      'pest': instance.pest,
    };

_$RegularEventImpl _$$RegularEventImplFromJson(Map<String, dynamic> json) =>
    _$RegularEventImpl(
      frequency: json['frequency'] == null
          ? null
          : HeightCm.fromJson(json['frequency'] as Map<String, dynamic>),
      frequencyUnit: json['frequency_unit'] == null
          ? null
          : Exposure.fromJson(json['frequency_unit'] as Map<String, dynamic>),
      name: json['name'] as String?,
      frequencyCount: (json['frequency_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegularEventImplToJson(_$RegularEventImpl instance) =>
    <String, dynamic>{
      'frequency': instance.frequency,
      'frequency_unit': instance.frequencyUnit,
      'name': instance.name,
      'frequency_count': instance.frequencyCount,
    };

_$ScientificClassificationImpl _$$ScientificClassificationImplFromJson(
        Map<String, dynamic> json) =>
    _$ScientificClassificationImpl(
      orders:
          (json['orders'] as List<dynamic>?)?.map((e) => e as String).toList(),
      family: json['family'] as String?,
      phylum: json['phylum'] as String?,
      classify: json['classify'] as String?,
      genus: json['genus'] as String?,
      species: json['species'] as String?,
    );

Map<String, dynamic> _$$ScientificClassificationImplToJson(
        _$ScientificClassificationImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'family': instance.family,
      'phylum': instance.phylum,
      'classify': instance.classify,
      'genus': instance.genus,
      'species': instance.species,
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
