import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_details_model.freezed.dart';
part 'plant_details_model.g.dart';

@freezed
class PlantDetailsModel with _$PlantDetailsModel {
  const factory PlantDetailsModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'common_names') List<CommonNameEntry>? commonNames,
    @JsonKey(name: 'created') DateTime? created,
    @JsonKey(name: 'cultivation') String? cultivation,
    @JsonKey(name: 'duration') List<String>? duration,
    @JsonKey(name: 'edible_parts') List<NamedSlug>? edibleParts,
    @JsonKey(name: 'exposure') List<String>? exposure,
    @JsonKey(name: 'foliage') List<String>? foliage,
    @JsonKey(name: 'fragrance') List<String>? fragrance,
    @JsonKey(name: 'genus_description') String? genusDescription,
    @JsonKey(name: 'growth_tips') List<GrowthTip>? growthTips,
    @JsonKey(name: 'habit') List<String>? habit,
    @JsonKey(name: 'hardiness_zone') String? hardinessZone,
    @JsonKey(name: 'harvest') List<String>? harvest,
    @JsonKey(name: 'height_max_cm') int? heightMaxCm,
    @JsonKey(name: 'height_min_cm') int? heightMinCm,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'images') List<PlantImageItem>? images,
    @JsonKey(name: 'is_edible') bool? isEdible,
    @JsonKey(name: 'latin_name') String? latinName,
    @JsonKey(name: 'misc') PlantMisc? misc,
    @JsonKey(name: 'modified') DateTime? modified,
    @JsonKey(name: 'parts_color') List<PartColorGroup>? partsColor,
    @JsonKey(name: 'planting') List<String>? planting,
    @JsonKey(name: 'position_side') List<String>? positionSide,
    @JsonKey(name: 'position_sunlight') List<String>? positionSunlight,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'regular_events') List<RegularEvent>? regularEvents,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'soil_moisture') List<String>? soilMoisture,
    @JsonKey(name: 'soil_ph') List<String>? soilPh,
    @JsonKey(name: 'soil_types') List<String>? soilTypes,
    @JsonKey(name: 'sources') List<Source>? sources,
    @JsonKey(name: 'spread_max_cm') int? spreadMaxCm,
    @JsonKey(name: 'spread_min_cm') int? spreadMinCm,
    @JsonKey(name: 'synonyms') List<String>? synonyms,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'toxicity') List<String>? toxicity,
    @JsonKey(name: 'years_to_max_height_max') int? yearsToMaxHeightMax,
    @JsonKey(name: 'years_to_max_height_min') int? yearsToMaxHeightMin,
  }) = _PlantDetailsModel;

  factory PlantDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PlantDetailsModelFromJson(json);
}

@freezed
class CommonNameEntry with _$CommonNameEntry {
  const factory CommonNameEntry({
    @JsonKey(name: 'is_main') bool? isMain,
    @JsonKey(name: 'lang') String? lang,
    @JsonKey(name: 'name') String? name,
  }) = _CommonNameEntry;

  factory CommonNameEntry.fromJson(Map<String, dynamic> json) =>
      _$CommonNameEntryFromJson(json);
}

@freezed
class NamedSlug with _$NamedSlug {
  const factory NamedSlug({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'slug') String? slug,
  }) = _NamedSlug;

  factory NamedSlug.fromJson(Map<String, dynamic> json) =>
      _$NamedSlugFromJson(json);
}

@freezed
class GrowthTip with _$GrowthTip {
  const factory GrowthTip({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'tip_type') String? tipType,
  }) = _GrowthTip;

  factory GrowthTip.fromJson(Map<String, dynamic> json) =>
      _$GrowthTipFromJson(json);
}

@freezed
class PlantImageItem with _$PlantImageItem {
  const factory PlantImageItem({
    @JsonKey(name: 'image_copyright') String? imageCopyright,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'part') NamedSlug? part,
  }) = _PlantImageItem;

  factory PlantImageItem.fromJson(Map<String, dynamic> json) =>
      _$PlantImageItemFromJson(json);
}

@freezed
class ColorEntry with _$ColorEntry {
  const factory ColorEntry({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'slug') String? slug,
  }) = _ColorEntry;

  factory ColorEntry.fromJson(Map<String, dynamic> json) =>
      _$ColorEntryFromJson(json);
}

@freezed
class PartColorGroup with _$PartColorGroup {
  const factory PartColorGroup({
    @JsonKey(name: 'colors') List<ColorEntry>? colors,
    @JsonKey(name: 'part') NamedSlug? part,
    @JsonKey(name: 'season') List<String>? season,
  }) = _PartColorGroup;

  factory PartColorGroup.fromJson(Map<String, dynamic> json) =>
      _$PartColorGroupFromJson(json);
}

@freezed
class PathogenItem with _$PathogenItem {
  const factory PathogenItem({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'pathogen_type') String? pathogenType,
  }) = _PathogenItem;

  factory PathogenItem.fromJson(Map<String, dynamic> json) =>
      _$PathogenItemFromJson(json);
}

@freezed
class RegularEvent with _$RegularEvent {
  const factory RegularEvent({
    @JsonKey(name: 'interval_max') int? intervalMax,
    @JsonKey(name: 'interval_min') int? intervalMin,
    @JsonKey(name: 'interval_unit') String? intervalUnit,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'repetition_count') int? repetitionCount,
  }) = _RegularEvent;

  factory RegularEvent.fromJson(Map<String, dynamic> json) =>
      _$RegularEventFromJson(json);
}

@freezed
class PlantMisc with _$PlantMisc {
  const factory PlantMisc({
    @JsonKey(name: 'rank') String? rank,
    @JsonKey(name: 'year') int? year,
  }) = _PlantMisc;

  factory PlantMisc.fromJson(Map<String, dynamic> json) =>
      _$PlantMiscFromJson(json);
}

@freezed
class SynonymItem with _$SynonymItem {
  const factory SynonymItem({
    @JsonKey(name: 'name') String? name,
  }) = _SynonymItem;

  factory SynonymItem.fromJson(Map<String, dynamic> json) =>
      _$SynonymItemFromJson(json);
}

@freezed
class PlantTag with _$PlantTag {
  const factory PlantTag({
    @JsonKey(name: 'name') String? name,
  }) = _PlantTag;

  factory PlantTag.fromJson(Map<String, dynamic> json) =>
      _$PlantTagFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    @JsonKey(name: 'last_update') DateTime? lastUpdate,
    @JsonKey(name: 'sid') String? sid,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'source_url') String? sourceUrl,
    @JsonKey(name: 'citation') String? citation,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}

extension PlantDetailsModelX on PlantDetailsModel {
  String? resolveMainCommonName({String lang = 'ru'}) {
    final List<CommonNameEntry> entries = commonNames ?? <CommonNameEntry>[];
    CommonNameEntry? pickMain(String code) {
      for (final CommonNameEntry e in entries) {
        if (e.lang == code && e.isMain == true && e.name != null) {
          return e;
        }
      }
      return null;
    }

    final CommonNameEntry? byLang = pickMain(lang);
    if (byLang != null) {
      return byLang.name;
    }
    for (final CommonNameEntry e in entries) {
      if (e.isMain == true && e.name != null) {
        return e.name;
      }
    }
    for (final CommonNameEntry e in entries) {
      if (e.name != null) {
        return e.name;
      }
    }
    return latinName;
  }

  List<String> commonNamesForLang(String lang) {
    final List<CommonNameEntry> entries = commonNames ?? <CommonNameEntry>[];
    return entries
        .where((CommonNameEntry e) => e.lang == lang && e.name != null)
        .map((CommonNameEntry e) => e.name!)
        .toList();
  }
}
