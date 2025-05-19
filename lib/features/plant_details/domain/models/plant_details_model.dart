import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_details_model.freezed.dart';
part 'plant_details_model.g.dart';

@freezed
class PlantDetailsModel with _$PlantDetailsModel {
  const factory PlantDetailsModel({
    @JsonKey(name: "main_common_name") String? mainCommonName,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "tags") List<String>? tags,
    @JsonKey(name: "synonyms") List<String>? synonyms,
    @JsonKey(name: "sources") List<Source>? sources,
    @JsonKey(name: "common_names") Map<String, List<String>>? commonNames,
    @JsonKey(name: "images") Images? images,
    @JsonKey(name: "pathogens") Pathogens? pathogens,
    @JsonKey(name: "growth_tips") GrowthTips? growthTips,
    @JsonKey(name: "distributions") List<Distribution>? distributions,
    @JsonKey(name: "regular_events") List<RegularEvent>? regularEvents,
    @JsonKey(name: "parts_color") PartsColor? partsColor,
    @JsonKey(name: "exposure") Exposure? exposure,
    @JsonKey(name: "duration") dynamic duration,
    @JsonKey(name: "edible_part") List<dynamic>? ediblePart,
    @JsonKey(name: "soil_type") List<Exposure>? soilType,
    @JsonKey(name: "soil_moisture") List<Exposure>? soilMoisture,
    @JsonKey(name: "soil_ph") List<Exposure>? soilPh,
    @JsonKey(name: "position_sunlight") List<Exposure>? positionSunlight,
    @JsonKey(name: "position_side") List<Exposure>? positionSide,
    @JsonKey(name: "fragrance") List<Exposure>? fragrance,
    @JsonKey(name: "harvest") List<Exposure>? harvest,
    @JsonKey(name: "planting") List<Exposure>? planting,
    @JsonKey(name: "toxicity") List<Exposure>? toxicity,
    @JsonKey(name: "foliage") List<Exposure>? foliage,
    @JsonKey(name: "habit") List<Exposure>? habit,
    @JsonKey(name: "height_cm") HeightCm? heightCm,
    @JsonKey(name: "years_to_max_height") HeightCm? yearsToMaxHeight,
    @JsonKey(name: "spread_cm") HeightCm? spreadCm,
    @JsonKey(name: "scientific_classification")
    ScientificClassification? scientificClassification,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "latin_name") String? latinName,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "genus_description") String? genusDescription,
    @JsonKey(name: "edible") dynamic edible,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "cultivation") String? cultivation,
    @JsonKey(name: "created") DateTime? created,
    @JsonKey(name: "modified") DateTime? modified,
    @JsonKey(name: "misc") Misc? misc,
  }) = _PlantDetailsModel;

  factory PlantDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PlantDetailsModelFromJson(json);
}

@freezed
class Distribution with _$Distribution {
  const factory Distribution({
    @JsonKey(name: "statuses") List<Exposure>? statuses,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "tdwg_code") String? tdwgCode,
    @JsonKey(name: "tdwg_level") int? tdwgLevel,
    @JsonKey(name: "species_count") int? speciesCount,
  }) = _Distribution;

  factory Distribution.fromJson(Map<String, dynamic> json) =>
      _$DistributionFromJson(json);
}

@freezed
class Exposure with _$Exposure {
  const factory Exposure({
    @JsonKey(name: "value") String? value,
    @JsonKey(name: "label") String? label,
  }) = _Exposure;

  factory Exposure.fromJson(Map<String, dynamic> json) =>
      _$ExposureFromJson(json);
}

@freezed
class GrowthTips with _$GrowthTips {
  const factory GrowthTips({
    @JsonKey(name: "propagation") List<String>? propagation,
    @JsonKey(name: "suggested_panting_places")
    List<String>? suggestedPantingPlaces,
    @JsonKey(name: "pruning") List<dynamic>? pruning,
  }) = _GrowthTips;

  factory GrowthTips.fromJson(Map<String, dynamic> json) =>
      _$GrowthTipsFromJson(json);
}

@freezed
class HeightCm with _$HeightCm {
  const factory HeightCm({
    @JsonKey(name: "from_value") int? fromValue,
    @JsonKey(name: "to_value") int? toValue,
  }) = _HeightCm;

  factory HeightCm.fromJson(Map<String, dynamic> json) =>
      _$HeightCmFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images({
    @JsonKey(name: "bark") List<ImagesBark>? bark,
    @JsonKey(name: "fruit") List<ImagesBark>? fruit,
    @JsonKey(name: "flower") List<ImagesBark>? flower,
    @JsonKey(name: "habit") List<ImagesBark>? habit,
    @JsonKey(name: "leaf") List<ImagesBark>? leaf,
    @JsonKey(name: "other") List<ImagesBark>? other,
    @JsonKey(name: "root") List<ImagesBark>? root,
    @JsonKey(name: "stem") List<ImagesBark>? stem,
    @JsonKey(name: "seed") List<ImagesBark>? seed,
    @JsonKey(name: "tuber") List<ImagesBark>? tuber,
    @JsonKey(name: "foliage") List<ImagesBark>? foliage,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@freezed
class ImagesBark with _$ImagesBark {
  const factory ImagesBark({
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "image_copyright") String? imageCopyright,
  }) = _ImagesBark;

  factory ImagesBark.fromJson(Map<String, dynamic> json) =>
      _$ImagesBarkFromJson(json);
}

@freezed
class Misc with _$Misc {
  const factory Misc({
    @JsonKey(name: "rank") String? rank,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "year") int? year,
    @JsonKey(name: "genus") String? genus,
    @JsonKey(name: "author") String? author,
    @JsonKey(name: "family") String? family,
    @JsonKey(name: "flower") Flower? flower,
    @JsonKey(name: "growth") Growth? growth,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "foliage") Foliage? foliage,
    @JsonKey(name: "vegetable") dynamic vegetable,
    @JsonKey(name: "common_name") String? commonName,
    @JsonKey(name: "bibliography") String? bibliography,
    @JsonKey(name: "observations") String? observations,
    @JsonKey(name: "fruit_or_seed") FruitOrSeed? fruitOrSeed,
    @JsonKey(name: "specifications") Specifications? specifications,
    @JsonKey(name: "scientific_name") String? scientificName,
    @JsonKey(name: "family_common_name") dynamic familyCommonName,
  }) = _Misc;

  factory Misc.fromJson(Map<String, dynamic> json) => _$MiscFromJson(json);
}

@freezed
class Flower with _$Flower {
  const factory Flower({
    @JsonKey(name: "color") dynamic color,
    @JsonKey(name: "conspicuous") dynamic conspicuous,
  }) = _Flower;

  factory Flower.fromJson(Map<String, dynamic> json) => _$FlowerFromJson(json);
}

@freezed
class Foliage with _$Foliage {
  const factory Foliage({
    @JsonKey(name: "color") dynamic color,
    @JsonKey(name: "texture") dynamic texture,
    @JsonKey(name: "leaf_retention") dynamic leafRetention,
  }) = _Foliage;

  factory Foliage.fromJson(Map<String, dynamic> json) =>
      _$FoliageFromJson(json);
}

@freezed
class FruitOrSeed with _$FruitOrSeed {
  const factory FruitOrSeed({
    @JsonKey(name: "color") dynamic color,
    @JsonKey(name: "shape") dynamic shape,
    @JsonKey(name: "conspicuous") dynamic conspicuous,
    @JsonKey(name: "seed_persistence") dynamic seedPersistence,
  }) = _FruitOrSeed;

  factory FruitOrSeed.fromJson(Map<String, dynamic> json) =>
      _$FruitOrSeedFromJson(json);
}

@freezed
class Growth with _$Growth {
  const factory Growth({
    @JsonKey(name: "light") dynamic light,
    @JsonKey(name: "sowing") dynamic sowing,
    @JsonKey(name: "spread") MinimumRootDepth? spread,
    @JsonKey(name: "ph_maximum") dynamic phMaximum,
    @JsonKey(name: "ph_minimum") dynamic phMinimum,
    @JsonKey(name: "description") dynamic description,
    @JsonKey(name: "row_spacing") MinimumRootDepth? rowSpacing,
    @JsonKey(name: "bloom_months") dynamic bloomMonths,
    @JsonKey(name: "fruit_months") dynamic fruitMonths,
    @JsonKey(name: "soil_texture") dynamic soilTexture,
    @JsonKey(name: "growth_months") dynamic growthMonths,
    @JsonKey(name: "soil_humidity") dynamic soilHumidity,
    @JsonKey(name: "soil_salinity") dynamic soilSalinity,
    @JsonKey(name: "days_to_harvest") dynamic daysToHarvest,
    @JsonKey(name: "soil_nutriments") dynamic soilNutriments,
    @JsonKey(name: "minimum_root_depth") MinimumRootDepth? minimumRootDepth,
    @JsonKey(name: "maximum_temperature") ImumTemperature? maximumTemperature,
    @JsonKey(name: "minimum_temperature") ImumTemperature? minimumTemperature,
    @JsonKey(name: "atmospheric_humidity") dynamic atmosphericHumidity,
    @JsonKey(name: "maximum_precipitation")
    ImumPrecipitation? maximumPrecipitation,
    @JsonKey(name: "minimum_precipitation")
    ImumPrecipitation? minimumPrecipitation,
  }) = _Growth;

  factory Growth.fromJson(Map<String, dynamic> json) => _$GrowthFromJson(json);
}

@freezed
class ImumPrecipitation with _$ImumPrecipitation {
  const factory ImumPrecipitation({
    @JsonKey(name: "mm") dynamic mm,
  }) = _ImumPrecipitation;

  factory ImumPrecipitation.fromJson(Map<String, dynamic> json) =>
      _$ImumPrecipitationFromJson(json);
}

@freezed
class ImumTemperature with _$ImumTemperature {
  const factory ImumTemperature({
    @JsonKey(name: "deg_c") dynamic degC,
    @JsonKey(name: "deg_f") dynamic degF,
  }) = _ImumTemperature;

  factory ImumTemperature.fromJson(Map<String, dynamic> json) =>
      _$ImumTemperatureFromJson(json);
}

@freezed
class MinimumRootDepth with _$MinimumRootDepth {
  const factory MinimumRootDepth({
    @JsonKey(name: "cm") dynamic cm,
  }) = _MinimumRootDepth;

  factory MinimumRootDepth.fromJson(Map<String, dynamic> json) =>
      _$MinimumRootDepthFromJson(json);
}

@freezed
class Specifications with _$Specifications {
  const factory Specifications({
    @JsonKey(name: "toxicity") dynamic toxicity,
    @JsonKey(name: "growth_form") dynamic growthForm,
    @JsonKey(name: "growth_rate") dynamic growthRate,
    @JsonKey(name: "growth_habit") dynamic growthHabit,
    @JsonKey(name: "ligneous_type") dynamic ligneousType,
    @JsonKey(name: "average_height") MinimumRootDepth? averageHeight,
    @JsonKey(name: "maximum_height") MinimumRootDepth? maximumHeight,
    @JsonKey(name: "nitrogen_fixation") dynamic nitrogenFixation,
    @JsonKey(name: "shape_and_orientation") dynamic shapeAndOrientation,
  }) = _Specifications;

  factory Specifications.fromJson(Map<String, dynamic> json) =>
      _$SpecificationsFromJson(json);
}

@freezed
class PartsColor with _$PartsColor {
  const factory PartsColor({
    @JsonKey(name: "bark") List<PartsColorBark>? bark,
    @JsonKey(name: "fruit") List<PartsColorBark>? fruit,
    @JsonKey(name: "flower") List<PartsColorBark>? flower,
    @JsonKey(name: "habit") List<PartsColorBark>? habit,
    @JsonKey(name: "leaf") List<PartsColorBark>? leaf,
    @JsonKey(name: "other") List<PartsColorBark>? other,
    @JsonKey(name: "root") List<PartsColorBark>? root,
    @JsonKey(name: "stem") List<PartsColorBark>? stem,
    @JsonKey(name: "seed") List<PartsColorBark>? seed,
    @JsonKey(name: "tuber") List<PartsColorBark>? tuber,
    @JsonKey(name: "foliage") List<PartsColorBark>? foliage,
  }) = _PartsColor;

  factory PartsColor.fromJson(Map<String, dynamic> json) =>
      _$PartsColorFromJson(json);
}

@freezed
class PartsColorBark with _$PartsColorBark {
  const factory PartsColorBark({
    @JsonKey(name: "season") Exposure? season,
    @JsonKey(name: "colors") List<ZColor>? colors,
  }) = _PartsColorBark;

  factory PartsColorBark.fromJson(Map<String, dynamic> json) =>
      _$PartsColorBarkFromJson(json);
}

enum ZColor {
  @JsonValue("Green")
  GREEN,
  @JsonValue("Blue")
  BLUE,
  @JsonValue("Black")
  BLACK,
  @JsonValue("Orange")
  ORANGE,
  @JsonValue("Red")
  RED,
  @JsonValue("White")
  WHITE,
}

final colorValues = EnumValues({
  "Green": ZColor.GREEN,
  "Blue": ZColor.BLUE,
  "Black": ZColor.BLACK,
  "Orange": ZColor.ORANGE,
  "Red": ZColor.RED,
  "White": ZColor.WHITE,
});

@freezed
class Pathogens with _$Pathogens {
  const factory Pathogens({
    @JsonKey(name: "disease") List<String>? disease,
    @JsonKey(name: "pest") List<dynamic>? pest,
  }) = _Pathogens;

  factory Pathogens.fromJson(Map<String, dynamic> json) =>
      _$PathogensFromJson(json);
}

@freezed
class RegularEvent with _$RegularEvent {
  const factory RegularEvent({
    @JsonKey(name: "frequency") HeightCm? frequency,
    @JsonKey(name: "frequency_unit") Exposure? frequencyUnit,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "frequency_count") int? frequencyCount,
  }) = _RegularEvent;

  factory RegularEvent.fromJson(Map<String, dynamic> json) =>
      _$RegularEventFromJson(json);
}

@freezed
class ScientificClassification with _$ScientificClassification {
  const factory ScientificClassification({
    @JsonKey(name: "orders") List<String>? orders,
    @JsonKey(name: "family") String? family,
    @JsonKey(name: "phylum") String? phylum,
    @JsonKey(name: "classify") String? classify,
    @JsonKey(name: "genus") String? genus,
    @JsonKey(name: "species") String? species,
  }) = _ScientificClassification;

  factory ScientificClassification.fromJson(Map<String, dynamic> json) =>
      _$ScientificClassificationFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    @JsonKey(name: "last_update") DateTime? lastUpdate,
    @JsonKey(name: "sid") String? sid,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "source_url") String? sourceUrl,
    @JsonKey(name: "citation") String? citation,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
