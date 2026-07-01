// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlantDetailsModel _$PlantDetailsModelFromJson(Map<String, dynamic> json) {
  return _PlantDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PlantDetailsModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'common_names')
  List<CommonNameEntry>? get commonNames => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'cultivation')
  String? get cultivation => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  List<String>? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'edible_parts')
  List<NamedSlug>? get edibleParts => throw _privateConstructorUsedError;
  @JsonKey(name: 'exposure')
  List<String>? get exposure => throw _privateConstructorUsedError;
  @JsonKey(name: 'foliage')
  List<String>? get foliage => throw _privateConstructorUsedError;
  @JsonKey(name: 'fragrance')
  List<String>? get fragrance => throw _privateConstructorUsedError;
  @JsonKey(name: 'genus_description')
  String? get genusDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'growth_tips')
  List<GrowthTip>? get growthTips => throw _privateConstructorUsedError;
  @JsonKey(name: 'habit')
  List<String>? get habit => throw _privateConstructorUsedError;
  @JsonKey(name: 'hardiness_zone')
  String? get hardinessZone => throw _privateConstructorUsedError;
  @JsonKey(name: 'harvest')
  List<String>? get harvest => throw _privateConstructorUsedError;
  @JsonKey(name: 'height_max_cm')
  int? get heightMaxCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'height_min_cm')
  int? get heightMinCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<PlantImageItem>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_edible')
  bool? get isEdible => throw _privateConstructorUsedError;
  @JsonKey(name: 'latin_name')
  String? get latinName => throw _privateConstructorUsedError;
  @JsonKey(name: 'misc')
  PlantMisc? get misc => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified')
  DateTime? get modified => throw _privateConstructorUsedError;
  @JsonKey(name: 'parts_color')
  List<PartColorGroup>? get partsColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'planting')
  List<String>? get planting => throw _privateConstructorUsedError;
  @JsonKey(name: 'position_side')
  List<String>? get positionSide => throw _privateConstructorUsedError;
  @JsonKey(name: 'position_sunlight')
  List<String>? get positionSunlight => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'regular_events')
  List<RegularEvent>? get regularEvents => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'soil_moisture')
  List<String>? get soilMoisture => throw _privateConstructorUsedError;
  @JsonKey(name: 'soil_ph')
  List<String>? get soilPh => throw _privateConstructorUsedError;
  @JsonKey(name: 'soil_types')
  List<String>? get soilTypes => throw _privateConstructorUsedError;
  @JsonKey(name: 'sources')
  List<Source>? get sources => throw _privateConstructorUsedError;
  @JsonKey(name: 'spread_max_cm')
  int? get spreadMaxCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'spread_min_cm')
  int? get spreadMinCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'synonyms')
  List<String>? get synonyms => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'toxicity')
  List<String>? get toxicity => throw _privateConstructorUsedError;
  @JsonKey(name: 'years_to_max_height_max')
  int? get yearsToMaxHeightMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'years_to_max_height_min')
  int? get yearsToMaxHeightMin => throw _privateConstructorUsedError;

  /// Serializes this PlantDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantDetailsModelCopyWith<PlantDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantDetailsModelCopyWith<$Res> {
  factory $PlantDetailsModelCopyWith(
          PlantDetailsModel value, $Res Function(PlantDetailsModel) then) =
      _$PlantDetailsModelCopyWithImpl<$Res, PlantDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
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
      @JsonKey(name: 'years_to_max_height_min') int? yearsToMaxHeightMin});

  $PlantMiscCopyWith<$Res>? get misc;
}

/// @nodoc
class _$PlantDetailsModelCopyWithImpl<$Res, $Val extends PlantDetailsModel>
    implements $PlantDetailsModelCopyWith<$Res> {
  _$PlantDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? commonNames = freezed,
    Object? created = freezed,
    Object? cultivation = freezed,
    Object? duration = freezed,
    Object? edibleParts = freezed,
    Object? exposure = freezed,
    Object? foliage = freezed,
    Object? fragrance = freezed,
    Object? genusDescription = freezed,
    Object? growthTips = freezed,
    Object? habit = freezed,
    Object? hardinessZone = freezed,
    Object? harvest = freezed,
    Object? heightMaxCm = freezed,
    Object? heightMinCm = freezed,
    Object? imageUrl = freezed,
    Object? images = freezed,
    Object? isEdible = freezed,
    Object? latinName = freezed,
    Object? misc = freezed,
    Object? modified = freezed,
    Object? partsColor = freezed,
    Object? planting = freezed,
    Object? positionSide = freezed,
    Object? positionSunlight = freezed,
    Object? rating = freezed,
    Object? regularEvents = freezed,
    Object? slug = freezed,
    Object? soilMoisture = freezed,
    Object? soilPh = freezed,
    Object? soilTypes = freezed,
    Object? sources = freezed,
    Object? spreadMaxCm = freezed,
    Object? spreadMinCm = freezed,
    Object? synonyms = freezed,
    Object? tags = freezed,
    Object? toxicity = freezed,
    Object? yearsToMaxHeightMax = freezed,
    Object? yearsToMaxHeightMin = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      commonNames: freezed == commonNames
          ? _value.commonNames
          : commonNames // ignore: cast_nullable_to_non_nullable
              as List<CommonNameEntry>?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cultivation: freezed == cultivation
          ? _value.cultivation
          : cultivation // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      edibleParts: freezed == edibleParts
          ? _value.edibleParts
          : edibleParts // ignore: cast_nullable_to_non_nullable
              as List<NamedSlug>?,
      exposure: freezed == exposure
          ? _value.exposure
          : exposure // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      foliage: freezed == foliage
          ? _value.foliage
          : foliage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      fragrance: freezed == fragrance
          ? _value.fragrance
          : fragrance // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      genusDescription: freezed == genusDescription
          ? _value.genusDescription
          : genusDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      growthTips: freezed == growthTips
          ? _value.growthTips
          : growthTips // ignore: cast_nullable_to_non_nullable
              as List<GrowthTip>?,
      habit: freezed == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hardinessZone: freezed == hardinessZone
          ? _value.hardinessZone
          : hardinessZone // ignore: cast_nullable_to_non_nullable
              as String?,
      harvest: freezed == harvest
          ? _value.harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      heightMaxCm: freezed == heightMaxCm
          ? _value.heightMaxCm
          : heightMaxCm // ignore: cast_nullable_to_non_nullable
              as int?,
      heightMinCm: freezed == heightMinCm
          ? _value.heightMinCm
          : heightMinCm // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PlantImageItem>?,
      isEdible: freezed == isEdible
          ? _value.isEdible
          : isEdible // ignore: cast_nullable_to_non_nullable
              as bool?,
      latinName: freezed == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String?,
      misc: freezed == misc
          ? _value.misc
          : misc // ignore: cast_nullable_to_non_nullable
              as PlantMisc?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      partsColor: freezed == partsColor
          ? _value.partsColor
          : partsColor // ignore: cast_nullable_to_non_nullable
              as List<PartColorGroup>?,
      planting: freezed == planting
          ? _value.planting
          : planting // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      positionSide: freezed == positionSide
          ? _value.positionSide
          : positionSide // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      positionSunlight: freezed == positionSunlight
          ? _value.positionSunlight
          : positionSunlight // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      regularEvents: freezed == regularEvents
          ? _value.regularEvents
          : regularEvents // ignore: cast_nullable_to_non_nullable
              as List<RegularEvent>?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      soilMoisture: freezed == soilMoisture
          ? _value.soilMoisture
          : soilMoisture // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      soilPh: freezed == soilPh
          ? _value.soilPh
          : soilPh // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      soilTypes: freezed == soilTypes
          ? _value.soilTypes
          : soilTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
      spreadMaxCm: freezed == spreadMaxCm
          ? _value.spreadMaxCm
          : spreadMaxCm // ignore: cast_nullable_to_non_nullable
              as int?,
      spreadMinCm: freezed == spreadMinCm
          ? _value.spreadMinCm
          : spreadMinCm // ignore: cast_nullable_to_non_nullable
              as int?,
      synonyms: freezed == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      toxicity: freezed == toxicity
          ? _value.toxicity
          : toxicity // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      yearsToMaxHeightMax: freezed == yearsToMaxHeightMax
          ? _value.yearsToMaxHeightMax
          : yearsToMaxHeightMax // ignore: cast_nullable_to_non_nullable
              as int?,
      yearsToMaxHeightMin: freezed == yearsToMaxHeightMin
          ? _value.yearsToMaxHeightMin
          : yearsToMaxHeightMin // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlantMiscCopyWith<$Res>? get misc {
    if (_value.misc == null) {
      return null;
    }

    return $PlantMiscCopyWith<$Res>(_value.misc!, (value) {
      return _then(_value.copyWith(misc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlantDetailsModelImplCopyWith<$Res>
    implements $PlantDetailsModelCopyWith<$Res> {
  factory _$$PlantDetailsModelImplCopyWith(_$PlantDetailsModelImpl value,
          $Res Function(_$PlantDetailsModelImpl) then) =
      __$$PlantDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
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
      @JsonKey(name: 'years_to_max_height_min') int? yearsToMaxHeightMin});

  @override
  $PlantMiscCopyWith<$Res>? get misc;
}

/// @nodoc
class __$$PlantDetailsModelImplCopyWithImpl<$Res>
    extends _$PlantDetailsModelCopyWithImpl<$Res, _$PlantDetailsModelImpl>
    implements _$$PlantDetailsModelImplCopyWith<$Res> {
  __$$PlantDetailsModelImplCopyWithImpl(_$PlantDetailsModelImpl _value,
      $Res Function(_$PlantDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? commonNames = freezed,
    Object? created = freezed,
    Object? cultivation = freezed,
    Object? duration = freezed,
    Object? edibleParts = freezed,
    Object? exposure = freezed,
    Object? foliage = freezed,
    Object? fragrance = freezed,
    Object? genusDescription = freezed,
    Object? growthTips = freezed,
    Object? habit = freezed,
    Object? hardinessZone = freezed,
    Object? harvest = freezed,
    Object? heightMaxCm = freezed,
    Object? heightMinCm = freezed,
    Object? imageUrl = freezed,
    Object? images = freezed,
    Object? isEdible = freezed,
    Object? latinName = freezed,
    Object? misc = freezed,
    Object? modified = freezed,
    Object? partsColor = freezed,
    Object? planting = freezed,
    Object? positionSide = freezed,
    Object? positionSunlight = freezed,
    Object? rating = freezed,
    Object? regularEvents = freezed,
    Object? slug = freezed,
    Object? soilMoisture = freezed,
    Object? soilPh = freezed,
    Object? soilTypes = freezed,
    Object? sources = freezed,
    Object? spreadMaxCm = freezed,
    Object? spreadMinCm = freezed,
    Object? synonyms = freezed,
    Object? tags = freezed,
    Object? toxicity = freezed,
    Object? yearsToMaxHeightMax = freezed,
    Object? yearsToMaxHeightMin = freezed,
  }) {
    return _then(_$PlantDetailsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      commonNames: freezed == commonNames
          ? _value._commonNames
          : commonNames // ignore: cast_nullable_to_non_nullable
              as List<CommonNameEntry>?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cultivation: freezed == cultivation
          ? _value.cultivation
          : cultivation // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value._duration
          : duration // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      edibleParts: freezed == edibleParts
          ? _value._edibleParts
          : edibleParts // ignore: cast_nullable_to_non_nullable
              as List<NamedSlug>?,
      exposure: freezed == exposure
          ? _value._exposure
          : exposure // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      foliage: freezed == foliage
          ? _value._foliage
          : foliage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      fragrance: freezed == fragrance
          ? _value._fragrance
          : fragrance // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      genusDescription: freezed == genusDescription
          ? _value.genusDescription
          : genusDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      growthTips: freezed == growthTips
          ? _value._growthTips
          : growthTips // ignore: cast_nullable_to_non_nullable
              as List<GrowthTip>?,
      habit: freezed == habit
          ? _value._habit
          : habit // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hardinessZone: freezed == hardinessZone
          ? _value.hardinessZone
          : hardinessZone // ignore: cast_nullable_to_non_nullable
              as String?,
      harvest: freezed == harvest
          ? _value._harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      heightMaxCm: freezed == heightMaxCm
          ? _value.heightMaxCm
          : heightMaxCm // ignore: cast_nullable_to_non_nullable
              as int?,
      heightMinCm: freezed == heightMinCm
          ? _value.heightMinCm
          : heightMinCm // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PlantImageItem>?,
      isEdible: freezed == isEdible
          ? _value.isEdible
          : isEdible // ignore: cast_nullable_to_non_nullable
              as bool?,
      latinName: freezed == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String?,
      misc: freezed == misc
          ? _value.misc
          : misc // ignore: cast_nullable_to_non_nullable
              as PlantMisc?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      partsColor: freezed == partsColor
          ? _value._partsColor
          : partsColor // ignore: cast_nullable_to_non_nullable
              as List<PartColorGroup>?,
      planting: freezed == planting
          ? _value._planting
          : planting // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      positionSide: freezed == positionSide
          ? _value._positionSide
          : positionSide // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      positionSunlight: freezed == positionSunlight
          ? _value._positionSunlight
          : positionSunlight // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      regularEvents: freezed == regularEvents
          ? _value._regularEvents
          : regularEvents // ignore: cast_nullable_to_non_nullable
              as List<RegularEvent>?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      soilMoisture: freezed == soilMoisture
          ? _value._soilMoisture
          : soilMoisture // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      soilPh: freezed == soilPh
          ? _value._soilPh
          : soilPh // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      soilTypes: freezed == soilTypes
          ? _value._soilTypes
          : soilTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sources: freezed == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
      spreadMaxCm: freezed == spreadMaxCm
          ? _value.spreadMaxCm
          : spreadMaxCm // ignore: cast_nullable_to_non_nullable
              as int?,
      spreadMinCm: freezed == spreadMinCm
          ? _value.spreadMinCm
          : spreadMinCm // ignore: cast_nullable_to_non_nullable
              as int?,
      synonyms: freezed == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      toxicity: freezed == toxicity
          ? _value._toxicity
          : toxicity // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      yearsToMaxHeightMax: freezed == yearsToMaxHeightMax
          ? _value.yearsToMaxHeightMax
          : yearsToMaxHeightMax // ignore: cast_nullable_to_non_nullable
              as int?,
      yearsToMaxHeightMin: freezed == yearsToMaxHeightMin
          ? _value.yearsToMaxHeightMin
          : yearsToMaxHeightMin // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantDetailsModelImpl implements _PlantDetailsModel {
  const _$PlantDetailsModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'common_names') final List<CommonNameEntry>? commonNames,
      @JsonKey(name: 'created') this.created,
      @JsonKey(name: 'cultivation') this.cultivation,
      @JsonKey(name: 'duration') final List<String>? duration,
      @JsonKey(name: 'edible_parts') final List<NamedSlug>? edibleParts,
      @JsonKey(name: 'exposure') final List<String>? exposure,
      @JsonKey(name: 'foliage') final List<String>? foliage,
      @JsonKey(name: 'fragrance') final List<String>? fragrance,
      @JsonKey(name: 'genus_description') this.genusDescription,
      @JsonKey(name: 'growth_tips') final List<GrowthTip>? growthTips,
      @JsonKey(name: 'habit') final List<String>? habit,
      @JsonKey(name: 'hardiness_zone') this.hardinessZone,
      @JsonKey(name: 'harvest') final List<String>? harvest,
      @JsonKey(name: 'height_max_cm') this.heightMaxCm,
      @JsonKey(name: 'height_min_cm') this.heightMinCm,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'images') final List<PlantImageItem>? images,
      @JsonKey(name: 'is_edible') this.isEdible,
      @JsonKey(name: 'latin_name') this.latinName,
      @JsonKey(name: 'misc') this.misc,
      @JsonKey(name: 'modified') this.modified,
      @JsonKey(name: 'parts_color') final List<PartColorGroup>? partsColor,
      @JsonKey(name: 'planting') final List<String>? planting,
      @JsonKey(name: 'position_side') final List<String>? positionSide,
      @JsonKey(name: 'position_sunlight') final List<String>? positionSunlight,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'regular_events') final List<RegularEvent>? regularEvents,
      @JsonKey(name: 'slug') this.slug,
      @JsonKey(name: 'soil_moisture') final List<String>? soilMoisture,
      @JsonKey(name: 'soil_ph') final List<String>? soilPh,
      @JsonKey(name: 'soil_types') final List<String>? soilTypes,
      @JsonKey(name: 'sources') final List<Source>? sources,
      @JsonKey(name: 'spread_max_cm') this.spreadMaxCm,
      @JsonKey(name: 'spread_min_cm') this.spreadMinCm,
      @JsonKey(name: 'synonyms') final List<String>? synonyms,
      @JsonKey(name: 'tags') final List<String>? tags,
      @JsonKey(name: 'toxicity') final List<String>? toxicity,
      @JsonKey(name: 'years_to_max_height_max') this.yearsToMaxHeightMax,
      @JsonKey(name: 'years_to_max_height_min') this.yearsToMaxHeightMin})
      : _commonNames = commonNames,
        _duration = duration,
        _edibleParts = edibleParts,
        _exposure = exposure,
        _foliage = foliage,
        _fragrance = fragrance,
        _growthTips = growthTips,
        _habit = habit,
        _harvest = harvest,
        _images = images,
        _partsColor = partsColor,
        _planting = planting,
        _positionSide = positionSide,
        _positionSunlight = positionSunlight,
        _regularEvents = regularEvents,
        _soilMoisture = soilMoisture,
        _soilPh = soilPh,
        _soilTypes = soilTypes,
        _sources = sources,
        _synonyms = synonyms,
        _tags = tags,
        _toxicity = toxicity;

  factory _$PlantDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  final List<CommonNameEntry>? _commonNames;
  @override
  @JsonKey(name: 'common_names')
  List<CommonNameEntry>? get commonNames {
    final value = _commonNames;
    if (value == null) return null;
    if (_commonNames is EqualUnmodifiableListView) return _commonNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created')
  final DateTime? created;
  @override
  @JsonKey(name: 'cultivation')
  final String? cultivation;
  final List<String>? _duration;
  @override
  @JsonKey(name: 'duration')
  List<String>? get duration {
    final value = _duration;
    if (value == null) return null;
    if (_duration is EqualUnmodifiableListView) return _duration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NamedSlug>? _edibleParts;
  @override
  @JsonKey(name: 'edible_parts')
  List<NamedSlug>? get edibleParts {
    final value = _edibleParts;
    if (value == null) return null;
    if (_edibleParts is EqualUnmodifiableListView) return _edibleParts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _exposure;
  @override
  @JsonKey(name: 'exposure')
  List<String>? get exposure {
    final value = _exposure;
    if (value == null) return null;
    if (_exposure is EqualUnmodifiableListView) return _exposure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _foliage;
  @override
  @JsonKey(name: 'foliage')
  List<String>? get foliage {
    final value = _foliage;
    if (value == null) return null;
    if (_foliage is EqualUnmodifiableListView) return _foliage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _fragrance;
  @override
  @JsonKey(name: 'fragrance')
  List<String>? get fragrance {
    final value = _fragrance;
    if (value == null) return null;
    if (_fragrance is EqualUnmodifiableListView) return _fragrance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'genus_description')
  final String? genusDescription;
  final List<GrowthTip>? _growthTips;
  @override
  @JsonKey(name: 'growth_tips')
  List<GrowthTip>? get growthTips {
    final value = _growthTips;
    if (value == null) return null;
    if (_growthTips is EqualUnmodifiableListView) return _growthTips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _habit;
  @override
  @JsonKey(name: 'habit')
  List<String>? get habit {
    final value = _habit;
    if (value == null) return null;
    if (_habit is EqualUnmodifiableListView) return _habit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'hardiness_zone')
  final String? hardinessZone;
  final List<String>? _harvest;
  @override
  @JsonKey(name: 'harvest')
  List<String>? get harvest {
    final value = _harvest;
    if (value == null) return null;
    if (_harvest is EqualUnmodifiableListView) return _harvest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'height_max_cm')
  final int? heightMaxCm;
  @override
  @JsonKey(name: 'height_min_cm')
  final int? heightMinCm;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  final List<PlantImageItem>? _images;
  @override
  @JsonKey(name: 'images')
  List<PlantImageItem>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_edible')
  final bool? isEdible;
  @override
  @JsonKey(name: 'latin_name')
  final String? latinName;
  @override
  @JsonKey(name: 'misc')
  final PlantMisc? misc;
  @override
  @JsonKey(name: 'modified')
  final DateTime? modified;
  final List<PartColorGroup>? _partsColor;
  @override
  @JsonKey(name: 'parts_color')
  List<PartColorGroup>? get partsColor {
    final value = _partsColor;
    if (value == null) return null;
    if (_partsColor is EqualUnmodifiableListView) return _partsColor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _planting;
  @override
  @JsonKey(name: 'planting')
  List<String>? get planting {
    final value = _planting;
    if (value == null) return null;
    if (_planting is EqualUnmodifiableListView) return _planting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _positionSide;
  @override
  @JsonKey(name: 'position_side')
  List<String>? get positionSide {
    final value = _positionSide;
    if (value == null) return null;
    if (_positionSide is EqualUnmodifiableListView) return _positionSide;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _positionSunlight;
  @override
  @JsonKey(name: 'position_sunlight')
  List<String>? get positionSunlight {
    final value = _positionSunlight;
    if (value == null) return null;
    if (_positionSunlight is EqualUnmodifiableListView)
      return _positionSunlight;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'rating')
  final int? rating;
  final List<RegularEvent>? _regularEvents;
  @override
  @JsonKey(name: 'regular_events')
  List<RegularEvent>? get regularEvents {
    final value = _regularEvents;
    if (value == null) return null;
    if (_regularEvents is EqualUnmodifiableListView) return _regularEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'slug')
  final String? slug;
  final List<String>? _soilMoisture;
  @override
  @JsonKey(name: 'soil_moisture')
  List<String>? get soilMoisture {
    final value = _soilMoisture;
    if (value == null) return null;
    if (_soilMoisture is EqualUnmodifiableListView) return _soilMoisture;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _soilPh;
  @override
  @JsonKey(name: 'soil_ph')
  List<String>? get soilPh {
    final value = _soilPh;
    if (value == null) return null;
    if (_soilPh is EqualUnmodifiableListView) return _soilPh;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _soilTypes;
  @override
  @JsonKey(name: 'soil_types')
  List<String>? get soilTypes {
    final value = _soilTypes;
    if (value == null) return null;
    if (_soilTypes is EqualUnmodifiableListView) return _soilTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Source>? _sources;
  @override
  @JsonKey(name: 'sources')
  List<Source>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'spread_max_cm')
  final int? spreadMaxCm;
  @override
  @JsonKey(name: 'spread_min_cm')
  final int? spreadMinCm;
  final List<String>? _synonyms;
  @override
  @JsonKey(name: 'synonyms')
  List<String>? get synonyms {
    final value = _synonyms;
    if (value == null) return null;
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _toxicity;
  @override
  @JsonKey(name: 'toxicity')
  List<String>? get toxicity {
    final value = _toxicity;
    if (value == null) return null;
    if (_toxicity is EqualUnmodifiableListView) return _toxicity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'years_to_max_height_max')
  final int? yearsToMaxHeightMax;
  @override
  @JsonKey(name: 'years_to_max_height_min')
  final int? yearsToMaxHeightMin;

  @override
  String toString() {
    return 'PlantDetailsModel(id: $id, commonNames: $commonNames, created: $created, cultivation: $cultivation, duration: $duration, edibleParts: $edibleParts, exposure: $exposure, foliage: $foliage, fragrance: $fragrance, genusDescription: $genusDescription, growthTips: $growthTips, habit: $habit, hardinessZone: $hardinessZone, harvest: $harvest, heightMaxCm: $heightMaxCm, heightMinCm: $heightMinCm, imageUrl: $imageUrl, images: $images, isEdible: $isEdible, latinName: $latinName, misc: $misc, modified: $modified, partsColor: $partsColor, planting: $planting, positionSide: $positionSide, positionSunlight: $positionSunlight, rating: $rating, regularEvents: $regularEvents, slug: $slug, soilMoisture: $soilMoisture, soilPh: $soilPh, soilTypes: $soilTypes, sources: $sources, spreadMaxCm: $spreadMaxCm, spreadMinCm: $spreadMinCm, synonyms: $synonyms, tags: $tags, toxicity: $toxicity, yearsToMaxHeightMax: $yearsToMaxHeightMax, yearsToMaxHeightMin: $yearsToMaxHeightMin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._commonNames, _commonNames) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.cultivation, cultivation) ||
                other.cultivation == cultivation) &&
            const DeepCollectionEquality().equals(other._duration, _duration) &&
            const DeepCollectionEquality()
                .equals(other._edibleParts, _edibleParts) &&
            const DeepCollectionEquality().equals(other._exposure, _exposure) &&
            const DeepCollectionEquality().equals(other._foliage, _foliage) &&
            const DeepCollectionEquality()
                .equals(other._fragrance, _fragrance) &&
            (identical(other.genusDescription, genusDescription) ||
                other.genusDescription == genusDescription) &&
            const DeepCollectionEquality()
                .equals(other._growthTips, _growthTips) &&
            const DeepCollectionEquality().equals(other._habit, _habit) &&
            (identical(other.hardinessZone, hardinessZone) ||
                other.hardinessZone == hardinessZone) &&
            const DeepCollectionEquality().equals(other._harvest, _harvest) &&
            (identical(other.heightMaxCm, heightMaxCm) ||
                other.heightMaxCm == heightMaxCm) &&
            (identical(other.heightMinCm, heightMinCm) ||
                other.heightMinCm == heightMinCm) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isEdible, isEdible) ||
                other.isEdible == isEdible) &&
            (identical(other.latinName, latinName) ||
                other.latinName == latinName) &&
            (identical(other.misc, misc) || other.misc == misc) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            const DeepCollectionEquality()
                .equals(other._partsColor, _partsColor) &&
            const DeepCollectionEquality().equals(other._planting, _planting) &&
            const DeepCollectionEquality()
                .equals(other._positionSide, _positionSide) &&
            const DeepCollectionEquality()
                .equals(other._positionSunlight, _positionSunlight) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._regularEvents, _regularEvents) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality()
                .equals(other._soilMoisture, _soilMoisture) &&
            const DeepCollectionEquality().equals(other._soilPh, _soilPh) &&
            const DeepCollectionEquality()
                .equals(other._soilTypes, _soilTypes) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.spreadMaxCm, spreadMaxCm) ||
                other.spreadMaxCm == spreadMaxCm) &&
            (identical(other.spreadMinCm, spreadMinCm) ||
                other.spreadMinCm == spreadMinCm) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._toxicity, _toxicity) &&
            (identical(other.yearsToMaxHeightMax, yearsToMaxHeightMax) ||
                other.yearsToMaxHeightMax == yearsToMaxHeightMax) &&
            (identical(other.yearsToMaxHeightMin, yearsToMaxHeightMin) ||
                other.yearsToMaxHeightMin == yearsToMaxHeightMin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_commonNames),
        created,
        cultivation,
        const DeepCollectionEquality().hash(_duration),
        const DeepCollectionEquality().hash(_edibleParts),
        const DeepCollectionEquality().hash(_exposure),
        const DeepCollectionEquality().hash(_foliage),
        const DeepCollectionEquality().hash(_fragrance),
        genusDescription,
        const DeepCollectionEquality().hash(_growthTips),
        const DeepCollectionEquality().hash(_habit),
        hardinessZone,
        const DeepCollectionEquality().hash(_harvest),
        heightMaxCm,
        heightMinCm,
        imageUrl,
        const DeepCollectionEquality().hash(_images),
        isEdible,
        latinName,
        misc,
        modified,
        const DeepCollectionEquality().hash(_partsColor),
        const DeepCollectionEquality().hash(_planting),
        const DeepCollectionEquality().hash(_positionSide),
        const DeepCollectionEquality().hash(_positionSunlight),
        rating,
        const DeepCollectionEquality().hash(_regularEvents),
        slug,
        const DeepCollectionEquality().hash(_soilMoisture),
        const DeepCollectionEquality().hash(_soilPh),
        const DeepCollectionEquality().hash(_soilTypes),
        const DeepCollectionEquality().hash(_sources),
        spreadMaxCm,
        spreadMinCm,
        const DeepCollectionEquality().hash(_synonyms),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_toxicity),
        yearsToMaxHeightMax,
        yearsToMaxHeightMin
      ]);

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantDetailsModelImplCopyWith<_$PlantDetailsModelImpl> get copyWith =>
      __$$PlantDetailsModelImplCopyWithImpl<_$PlantDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _PlantDetailsModel implements PlantDetailsModel {
  const factory _PlantDetailsModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'common_names') final List<CommonNameEntry>? commonNames,
      @JsonKey(name: 'created') final DateTime? created,
      @JsonKey(name: 'cultivation') final String? cultivation,
      @JsonKey(name: 'duration') final List<String>? duration,
      @JsonKey(name: 'edible_parts') final List<NamedSlug>? edibleParts,
      @JsonKey(name: 'exposure') final List<String>? exposure,
      @JsonKey(name: 'foliage') final List<String>? foliage,
      @JsonKey(name: 'fragrance') final List<String>? fragrance,
      @JsonKey(name: 'genus_description') final String? genusDescription,
      @JsonKey(name: 'growth_tips') final List<GrowthTip>? growthTips,
      @JsonKey(name: 'habit') final List<String>? habit,
      @JsonKey(name: 'hardiness_zone') final String? hardinessZone,
      @JsonKey(name: 'harvest') final List<String>? harvest,
      @JsonKey(name: 'height_max_cm') final int? heightMaxCm,
      @JsonKey(name: 'height_min_cm') final int? heightMinCm,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'images') final List<PlantImageItem>? images,
      @JsonKey(name: 'is_edible') final bool? isEdible,
      @JsonKey(name: 'latin_name') final String? latinName,
      @JsonKey(name: 'misc') final PlantMisc? misc,
      @JsonKey(name: 'modified') final DateTime? modified,
      @JsonKey(name: 'parts_color') final List<PartColorGroup>? partsColor,
      @JsonKey(name: 'planting') final List<String>? planting,
      @JsonKey(name: 'position_side') final List<String>? positionSide,
      @JsonKey(name: 'position_sunlight') final List<String>? positionSunlight,
      @JsonKey(name: 'rating') final int? rating,
      @JsonKey(name: 'regular_events') final List<RegularEvent>? regularEvents,
      @JsonKey(name: 'slug') final String? slug,
      @JsonKey(name: 'soil_moisture') final List<String>? soilMoisture,
      @JsonKey(name: 'soil_ph') final List<String>? soilPh,
      @JsonKey(name: 'soil_types') final List<String>? soilTypes,
      @JsonKey(name: 'sources') final List<Source>? sources,
      @JsonKey(name: 'spread_max_cm') final int? spreadMaxCm,
      @JsonKey(name: 'spread_min_cm') final int? spreadMinCm,
      @JsonKey(name: 'synonyms') final List<String>? synonyms,
      @JsonKey(name: 'tags') final List<String>? tags,
      @JsonKey(name: 'toxicity') final List<String>? toxicity,
      @JsonKey(name: 'years_to_max_height_max') final int? yearsToMaxHeightMax,
      @JsonKey(name: 'years_to_max_height_min')
      final int? yearsToMaxHeightMin}) = _$PlantDetailsModelImpl;

  factory _PlantDetailsModel.fromJson(Map<String, dynamic> json) =
      _$PlantDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'common_names')
  List<CommonNameEntry>? get commonNames;
  @override
  @JsonKey(name: 'created')
  DateTime? get created;
  @override
  @JsonKey(name: 'cultivation')
  String? get cultivation;
  @override
  @JsonKey(name: 'duration')
  List<String>? get duration;
  @override
  @JsonKey(name: 'edible_parts')
  List<NamedSlug>? get edibleParts;
  @override
  @JsonKey(name: 'exposure')
  List<String>? get exposure;
  @override
  @JsonKey(name: 'foliage')
  List<String>? get foliage;
  @override
  @JsonKey(name: 'fragrance')
  List<String>? get fragrance;
  @override
  @JsonKey(name: 'genus_description')
  String? get genusDescription;
  @override
  @JsonKey(name: 'growth_tips')
  List<GrowthTip>? get growthTips;
  @override
  @JsonKey(name: 'habit')
  List<String>? get habit;
  @override
  @JsonKey(name: 'hardiness_zone')
  String? get hardinessZone;
  @override
  @JsonKey(name: 'harvest')
  List<String>? get harvest;
  @override
  @JsonKey(name: 'height_max_cm')
  int? get heightMaxCm;
  @override
  @JsonKey(name: 'height_min_cm')
  int? get heightMinCm;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'images')
  List<PlantImageItem>? get images;
  @override
  @JsonKey(name: 'is_edible')
  bool? get isEdible;
  @override
  @JsonKey(name: 'latin_name')
  String? get latinName;
  @override
  @JsonKey(name: 'misc')
  PlantMisc? get misc;
  @override
  @JsonKey(name: 'modified')
  DateTime? get modified;
  @override
  @JsonKey(name: 'parts_color')
  List<PartColorGroup>? get partsColor;
  @override
  @JsonKey(name: 'planting')
  List<String>? get planting;
  @override
  @JsonKey(name: 'position_side')
  List<String>? get positionSide;
  @override
  @JsonKey(name: 'position_sunlight')
  List<String>? get positionSunlight;
  @override
  @JsonKey(name: 'rating')
  int? get rating;
  @override
  @JsonKey(name: 'regular_events')
  List<RegularEvent>? get regularEvents;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'soil_moisture')
  List<String>? get soilMoisture;
  @override
  @JsonKey(name: 'soil_ph')
  List<String>? get soilPh;
  @override
  @JsonKey(name: 'soil_types')
  List<String>? get soilTypes;
  @override
  @JsonKey(name: 'sources')
  List<Source>? get sources;
  @override
  @JsonKey(name: 'spread_max_cm')
  int? get spreadMaxCm;
  @override
  @JsonKey(name: 'spread_min_cm')
  int? get spreadMinCm;
  @override
  @JsonKey(name: 'synonyms')
  List<String>? get synonyms;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @override
  @JsonKey(name: 'toxicity')
  List<String>? get toxicity;
  @override
  @JsonKey(name: 'years_to_max_height_max')
  int? get yearsToMaxHeightMax;
  @override
  @JsonKey(name: 'years_to_max_height_min')
  int? get yearsToMaxHeightMin;

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantDetailsModelImplCopyWith<_$PlantDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommonNameEntry _$CommonNameEntryFromJson(Map<String, dynamic> json) {
  return _CommonNameEntry.fromJson(json);
}

/// @nodoc
mixin _$CommonNameEntry {
  @JsonKey(name: 'is_main')
  bool? get isMain => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang')
  String? get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this CommonNameEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommonNameEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonNameEntryCopyWith<CommonNameEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonNameEntryCopyWith<$Res> {
  factory $CommonNameEntryCopyWith(
          CommonNameEntry value, $Res Function(CommonNameEntry) then) =
      _$CommonNameEntryCopyWithImpl<$Res, CommonNameEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_main') bool? isMain,
      @JsonKey(name: 'lang') String? lang,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$CommonNameEntryCopyWithImpl<$Res, $Val extends CommonNameEntry>
    implements $CommonNameEntryCopyWith<$Res> {
  _$CommonNameEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonNameEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMain = freezed,
    Object? lang = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      isMain: freezed == isMain
          ? _value.isMain
          : isMain // ignore: cast_nullable_to_non_nullable
              as bool?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonNameEntryImplCopyWith<$Res>
    implements $CommonNameEntryCopyWith<$Res> {
  factory _$$CommonNameEntryImplCopyWith(_$CommonNameEntryImpl value,
          $Res Function(_$CommonNameEntryImpl) then) =
      __$$CommonNameEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_main') bool? isMain,
      @JsonKey(name: 'lang') String? lang,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$CommonNameEntryImplCopyWithImpl<$Res>
    extends _$CommonNameEntryCopyWithImpl<$Res, _$CommonNameEntryImpl>
    implements _$$CommonNameEntryImplCopyWith<$Res> {
  __$$CommonNameEntryImplCopyWithImpl(
      _$CommonNameEntryImpl _value, $Res Function(_$CommonNameEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonNameEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMain = freezed,
    Object? lang = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CommonNameEntryImpl(
      isMain: freezed == isMain
          ? _value.isMain
          : isMain // ignore: cast_nullable_to_non_nullable
              as bool?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommonNameEntryImpl implements _CommonNameEntry {
  const _$CommonNameEntryImpl(
      {@JsonKey(name: 'is_main') this.isMain,
      @JsonKey(name: 'lang') this.lang,
      @JsonKey(name: 'name') this.name});

  factory _$CommonNameEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommonNameEntryImplFromJson(json);

  @override
  @JsonKey(name: 'is_main')
  final bool? isMain;
  @override
  @JsonKey(name: 'lang')
  final String? lang;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'CommonNameEntry(isMain: $isMain, lang: $lang, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonNameEntryImpl &&
            (identical(other.isMain, isMain) || other.isMain == isMain) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isMain, lang, name);

  /// Create a copy of CommonNameEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonNameEntryImplCopyWith<_$CommonNameEntryImpl> get copyWith =>
      __$$CommonNameEntryImplCopyWithImpl<_$CommonNameEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommonNameEntryImplToJson(
      this,
    );
  }
}

abstract class _CommonNameEntry implements CommonNameEntry {
  const factory _CommonNameEntry(
      {@JsonKey(name: 'is_main') final bool? isMain,
      @JsonKey(name: 'lang') final String? lang,
      @JsonKey(name: 'name') final String? name}) = _$CommonNameEntryImpl;

  factory _CommonNameEntry.fromJson(Map<String, dynamic> json) =
      _$CommonNameEntryImpl.fromJson;

  @override
  @JsonKey(name: 'is_main')
  bool? get isMain;
  @override
  @JsonKey(name: 'lang')
  String? get lang;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of CommonNameEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonNameEntryImplCopyWith<_$CommonNameEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NamedSlug _$NamedSlugFromJson(Map<String, dynamic> json) {
  return _NamedSlug.fromJson(json);
}

/// @nodoc
mixin _$NamedSlug {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;

  /// Serializes this NamedSlug to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NamedSlug
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NamedSlugCopyWith<NamedSlug> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedSlugCopyWith<$Res> {
  factory $NamedSlugCopyWith(NamedSlug value, $Res Function(NamedSlug) then) =
      _$NamedSlugCopyWithImpl<$Res, NamedSlug>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'slug') String? slug});
}

/// @nodoc
class _$NamedSlugCopyWithImpl<$Res, $Val extends NamedSlug>
    implements $NamedSlugCopyWith<$Res> {
  _$NamedSlugCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NamedSlug
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NamedSlugImplCopyWith<$Res>
    implements $NamedSlugCopyWith<$Res> {
  factory _$$NamedSlugImplCopyWith(
          _$NamedSlugImpl value, $Res Function(_$NamedSlugImpl) then) =
      __$$NamedSlugImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'slug') String? slug});
}

/// @nodoc
class __$$NamedSlugImplCopyWithImpl<$Res>
    extends _$NamedSlugCopyWithImpl<$Res, _$NamedSlugImpl>
    implements _$$NamedSlugImplCopyWith<$Res> {
  __$$NamedSlugImplCopyWithImpl(
      _$NamedSlugImpl _value, $Res Function(_$NamedSlugImpl) _then)
      : super(_value, _then);

  /// Create a copy of NamedSlug
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$NamedSlugImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamedSlugImpl implements _NamedSlug {
  const _$NamedSlugImpl(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'slug') this.slug});

  factory _$NamedSlugImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamedSlugImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'slug')
  final String? slug;

  @override
  String toString() {
    return 'NamedSlug(name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamedSlugImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug);

  /// Create a copy of NamedSlug
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NamedSlugImplCopyWith<_$NamedSlugImpl> get copyWith =>
      __$$NamedSlugImplCopyWithImpl<_$NamedSlugImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamedSlugImplToJson(
      this,
    );
  }
}

abstract class _NamedSlug implements NamedSlug {
  const factory _NamedSlug(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'slug') final String? slug}) = _$NamedSlugImpl;

  factory _NamedSlug.fromJson(Map<String, dynamic> json) =
      _$NamedSlugImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'slug')
  String? get slug;

  /// Create a copy of NamedSlug
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NamedSlugImplCopyWith<_$NamedSlugImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GrowthTip _$GrowthTipFromJson(Map<String, dynamic> json) {
  return _GrowthTip.fromJson(json);
}

/// @nodoc
mixin _$GrowthTip {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'tip_type')
  String? get tipType => throw _privateConstructorUsedError;

  /// Serializes this GrowthTip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrowthTip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrowthTipCopyWith<GrowthTip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthTipCopyWith<$Res> {
  factory $GrowthTipCopyWith(GrowthTip value, $Res Function(GrowthTip) then) =
      _$GrowthTipCopyWithImpl<$Res, GrowthTip>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'tip_type') String? tipType});
}

/// @nodoc
class _$GrowthTipCopyWithImpl<$Res, $Val extends GrowthTip>
    implements $GrowthTipCopyWith<$Res> {
  _$GrowthTipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrowthTip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? tipType = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tipType: freezed == tipType
          ? _value.tipType
          : tipType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GrowthTipImplCopyWith<$Res>
    implements $GrowthTipCopyWith<$Res> {
  factory _$$GrowthTipImplCopyWith(
          _$GrowthTipImpl value, $Res Function(_$GrowthTipImpl) then) =
      __$$GrowthTipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'tip_type') String? tipType});
}

/// @nodoc
class __$$GrowthTipImplCopyWithImpl<$Res>
    extends _$GrowthTipCopyWithImpl<$Res, _$GrowthTipImpl>
    implements _$$GrowthTipImplCopyWith<$Res> {
  __$$GrowthTipImplCopyWithImpl(
      _$GrowthTipImpl _value, $Res Function(_$GrowthTipImpl) _then)
      : super(_value, _then);

  /// Create a copy of GrowthTip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? tipType = freezed,
  }) {
    return _then(_$GrowthTipImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tipType: freezed == tipType
          ? _value.tipType
          : tipType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthTipImpl implements _GrowthTip {
  const _$GrowthTipImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'tip_type') this.tipType});

  factory _$GrowthTipImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthTipImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'tip_type')
  final String? tipType;

  @override
  String toString() {
    return 'GrowthTip(name: $name, tipType: $tipType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthTipImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tipType, tipType) || other.tipType == tipType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, tipType);

  /// Create a copy of GrowthTip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthTipImplCopyWith<_$GrowthTipImpl> get copyWith =>
      __$$GrowthTipImplCopyWithImpl<_$GrowthTipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthTipImplToJson(
      this,
    );
  }
}

abstract class _GrowthTip implements GrowthTip {
  const factory _GrowthTip(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'tip_type') final String? tipType}) = _$GrowthTipImpl;

  factory _GrowthTip.fromJson(Map<String, dynamic> json) =
      _$GrowthTipImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'tip_type')
  String? get tipType;

  /// Create a copy of GrowthTip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrowthTipImplCopyWith<_$GrowthTipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlantImageItem _$PlantImageItemFromJson(Map<String, dynamic> json) {
  return _PlantImageItem.fromJson(json);
}

/// @nodoc
mixin _$PlantImageItem {
  @JsonKey(name: 'image_copyright')
  String? get imageCopyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'part')
  NamedSlug? get part => throw _privateConstructorUsedError;

  /// Serializes this PlantImageItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantImageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantImageItemCopyWith<PlantImageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantImageItemCopyWith<$Res> {
  factory $PlantImageItemCopyWith(
          PlantImageItem value, $Res Function(PlantImageItem) then) =
      _$PlantImageItemCopyWithImpl<$Res, PlantImageItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image_copyright') String? imageCopyright,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'part') NamedSlug? part});

  $NamedSlugCopyWith<$Res>? get part;
}

/// @nodoc
class _$PlantImageItemCopyWithImpl<$Res, $Val extends PlantImageItem>
    implements $PlantImageItemCopyWith<$Res> {
  _$PlantImageItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantImageItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageCopyright = freezed,
    Object? imageUrl = freezed,
    Object? part = freezed,
  }) {
    return _then(_value.copyWith(
      imageCopyright: freezed == imageCopyright
          ? _value.imageCopyright
          : imageCopyright // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      part: freezed == part
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as NamedSlug?,
    ) as $Val);
  }

  /// Create a copy of PlantImageItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedSlugCopyWith<$Res>? get part {
    if (_value.part == null) {
      return null;
    }

    return $NamedSlugCopyWith<$Res>(_value.part!, (value) {
      return _then(_value.copyWith(part: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlantImageItemImplCopyWith<$Res>
    implements $PlantImageItemCopyWith<$Res> {
  factory _$$PlantImageItemImplCopyWith(_$PlantImageItemImpl value,
          $Res Function(_$PlantImageItemImpl) then) =
      __$$PlantImageItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image_copyright') String? imageCopyright,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'part') NamedSlug? part});

  @override
  $NamedSlugCopyWith<$Res>? get part;
}

/// @nodoc
class __$$PlantImageItemImplCopyWithImpl<$Res>
    extends _$PlantImageItemCopyWithImpl<$Res, _$PlantImageItemImpl>
    implements _$$PlantImageItemImplCopyWith<$Res> {
  __$$PlantImageItemImplCopyWithImpl(
      _$PlantImageItemImpl _value, $Res Function(_$PlantImageItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantImageItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageCopyright = freezed,
    Object? imageUrl = freezed,
    Object? part = freezed,
  }) {
    return _then(_$PlantImageItemImpl(
      imageCopyright: freezed == imageCopyright
          ? _value.imageCopyright
          : imageCopyright // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      part: freezed == part
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as NamedSlug?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantImageItemImpl implements _PlantImageItem {
  const _$PlantImageItemImpl(
      {@JsonKey(name: 'image_copyright') this.imageCopyright,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'part') this.part});

  factory _$PlantImageItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantImageItemImplFromJson(json);

  @override
  @JsonKey(name: 'image_copyright')
  final String? imageCopyright;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'part')
  final NamedSlug? part;

  @override
  String toString() {
    return 'PlantImageItem(imageCopyright: $imageCopyright, imageUrl: $imageUrl, part: $part)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantImageItemImpl &&
            (identical(other.imageCopyright, imageCopyright) ||
                other.imageCopyright == imageCopyright) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.part, part) || other.part == part));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageCopyright, imageUrl, part);

  /// Create a copy of PlantImageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantImageItemImplCopyWith<_$PlantImageItemImpl> get copyWith =>
      __$$PlantImageItemImplCopyWithImpl<_$PlantImageItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantImageItemImplToJson(
      this,
    );
  }
}

abstract class _PlantImageItem implements PlantImageItem {
  const factory _PlantImageItem(
      {@JsonKey(name: 'image_copyright') final String? imageCopyright,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'part') final NamedSlug? part}) = _$PlantImageItemImpl;

  factory _PlantImageItem.fromJson(Map<String, dynamic> json) =
      _$PlantImageItemImpl.fromJson;

  @override
  @JsonKey(name: 'image_copyright')
  String? get imageCopyright;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'part')
  NamedSlug? get part;

  /// Create a copy of PlantImageItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantImageItemImplCopyWith<_$PlantImageItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorEntry _$ColorEntryFromJson(Map<String, dynamic> json) {
  return _ColorEntry.fromJson(json);
}

/// @nodoc
mixin _$ColorEntry {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;

  /// Serializes this ColorEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColorEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorEntryCopyWith<ColorEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorEntryCopyWith<$Res> {
  factory $ColorEntryCopyWith(
          ColorEntry value, $Res Function(ColorEntry) then) =
      _$ColorEntryCopyWithImpl<$Res, ColorEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'slug') String? slug});
}

/// @nodoc
class _$ColorEntryCopyWithImpl<$Res, $Val extends ColorEntry>
    implements $ColorEntryCopyWith<$Res> {
  _$ColorEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorEntryImplCopyWith<$Res>
    implements $ColorEntryCopyWith<$Res> {
  factory _$$ColorEntryImplCopyWith(
          _$ColorEntryImpl value, $Res Function(_$ColorEntryImpl) then) =
      __$$ColorEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'slug') String? slug});
}

/// @nodoc
class __$$ColorEntryImplCopyWithImpl<$Res>
    extends _$ColorEntryCopyWithImpl<$Res, _$ColorEntryImpl>
    implements _$$ColorEntryImplCopyWith<$Res> {
  __$$ColorEntryImplCopyWithImpl(
      _$ColorEntryImpl _value, $Res Function(_$ColorEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$ColorEntryImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorEntryImpl implements _ColorEntry {
  const _$ColorEntryImpl(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'slug') this.slug});

  factory _$ColorEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorEntryImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'slug')
  final String? slug;

  @override
  String toString() {
    return 'ColorEntry(name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorEntryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug);

  /// Create a copy of ColorEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorEntryImplCopyWith<_$ColorEntryImpl> get copyWith =>
      __$$ColorEntryImplCopyWithImpl<_$ColorEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorEntryImplToJson(
      this,
    );
  }
}

abstract class _ColorEntry implements ColorEntry {
  const factory _ColorEntry(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'slug') final String? slug}) = _$ColorEntryImpl;

  factory _ColorEntry.fromJson(Map<String, dynamic> json) =
      _$ColorEntryImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'slug')
  String? get slug;

  /// Create a copy of ColorEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorEntryImplCopyWith<_$ColorEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartColorGroup _$PartColorGroupFromJson(Map<String, dynamic> json) {
  return _PartColorGroup.fromJson(json);
}

/// @nodoc
mixin _$PartColorGroup {
  @JsonKey(name: 'colors')
  List<ColorEntry>? get colors => throw _privateConstructorUsedError;
  @JsonKey(name: 'part')
  NamedSlug? get part => throw _privateConstructorUsedError;
  @JsonKey(name: 'season')
  List<String>? get season => throw _privateConstructorUsedError;

  /// Serializes this PartColorGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartColorGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartColorGroupCopyWith<PartColorGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartColorGroupCopyWith<$Res> {
  factory $PartColorGroupCopyWith(
          PartColorGroup value, $Res Function(PartColorGroup) then) =
      _$PartColorGroupCopyWithImpl<$Res, PartColorGroup>;
  @useResult
  $Res call(
      {@JsonKey(name: 'colors') List<ColorEntry>? colors,
      @JsonKey(name: 'part') NamedSlug? part,
      @JsonKey(name: 'season') List<String>? season});

  $NamedSlugCopyWith<$Res>? get part;
}

/// @nodoc
class _$PartColorGroupCopyWithImpl<$Res, $Val extends PartColorGroup>
    implements $PartColorGroupCopyWith<$Res> {
  _$PartColorGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartColorGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = freezed,
    Object? part = freezed,
    Object? season = freezed,
  }) {
    return _then(_value.copyWith(
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorEntry>?,
      part: freezed == part
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as NamedSlug?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of PartColorGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedSlugCopyWith<$Res>? get part {
    if (_value.part == null) {
      return null;
    }

    return $NamedSlugCopyWith<$Res>(_value.part!, (value) {
      return _then(_value.copyWith(part: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PartColorGroupImplCopyWith<$Res>
    implements $PartColorGroupCopyWith<$Res> {
  factory _$$PartColorGroupImplCopyWith(_$PartColorGroupImpl value,
          $Res Function(_$PartColorGroupImpl) then) =
      __$$PartColorGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'colors') List<ColorEntry>? colors,
      @JsonKey(name: 'part') NamedSlug? part,
      @JsonKey(name: 'season') List<String>? season});

  @override
  $NamedSlugCopyWith<$Res>? get part;
}

/// @nodoc
class __$$PartColorGroupImplCopyWithImpl<$Res>
    extends _$PartColorGroupCopyWithImpl<$Res, _$PartColorGroupImpl>
    implements _$$PartColorGroupImplCopyWith<$Res> {
  __$$PartColorGroupImplCopyWithImpl(
      _$PartColorGroupImpl _value, $Res Function(_$PartColorGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartColorGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = freezed,
    Object? part = freezed,
    Object? season = freezed,
  }) {
    return _then(_$PartColorGroupImpl(
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorEntry>?,
      part: freezed == part
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as NamedSlug?,
      season: freezed == season
          ? _value._season
          : season // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartColorGroupImpl implements _PartColorGroup {
  const _$PartColorGroupImpl(
      {@JsonKey(name: 'colors') final List<ColorEntry>? colors,
      @JsonKey(name: 'part') this.part,
      @JsonKey(name: 'season') final List<String>? season})
      : _colors = colors,
        _season = season;

  factory _$PartColorGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartColorGroupImplFromJson(json);

  final List<ColorEntry>? _colors;
  @override
  @JsonKey(name: 'colors')
  List<ColorEntry>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'part')
  final NamedSlug? part;
  final List<String>? _season;
  @override
  @JsonKey(name: 'season')
  List<String>? get season {
    final value = _season;
    if (value == null) return null;
    if (_season is EqualUnmodifiableListView) return _season;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PartColorGroup(colors: $colors, part: $part, season: $season)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartColorGroupImpl &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.part, part) || other.part == part) &&
            const DeepCollectionEquality().equals(other._season, _season));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_colors),
      part,
      const DeepCollectionEquality().hash(_season));

  /// Create a copy of PartColorGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartColorGroupImplCopyWith<_$PartColorGroupImpl> get copyWith =>
      __$$PartColorGroupImplCopyWithImpl<_$PartColorGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartColorGroupImplToJson(
      this,
    );
  }
}

abstract class _PartColorGroup implements PartColorGroup {
  const factory _PartColorGroup(
          {@JsonKey(name: 'colors') final List<ColorEntry>? colors,
          @JsonKey(name: 'part') final NamedSlug? part,
          @JsonKey(name: 'season') final List<String>? season}) =
      _$PartColorGroupImpl;

  factory _PartColorGroup.fromJson(Map<String, dynamic> json) =
      _$PartColorGroupImpl.fromJson;

  @override
  @JsonKey(name: 'colors')
  List<ColorEntry>? get colors;
  @override
  @JsonKey(name: 'part')
  NamedSlug? get part;
  @override
  @JsonKey(name: 'season')
  List<String>? get season;

  /// Create a copy of PartColorGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartColorGroupImplCopyWith<_$PartColorGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PathogenItem _$PathogenItemFromJson(Map<String, dynamic> json) {
  return _PathogenItem.fromJson(json);
}

/// @nodoc
mixin _$PathogenItem {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'pathogen_type')
  String? get pathogenType => throw _privateConstructorUsedError;

  /// Serializes this PathogenItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PathogenItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PathogenItemCopyWith<PathogenItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathogenItemCopyWith<$Res> {
  factory $PathogenItemCopyWith(
          PathogenItem value, $Res Function(PathogenItem) then) =
      _$PathogenItemCopyWithImpl<$Res, PathogenItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'pathogen_type') String? pathogenType});
}

/// @nodoc
class _$PathogenItemCopyWithImpl<$Res, $Val extends PathogenItem>
    implements $PathogenItemCopyWith<$Res> {
  _$PathogenItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PathogenItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? pathogenType = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pathogenType: freezed == pathogenType
          ? _value.pathogenType
          : pathogenType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PathogenItemImplCopyWith<$Res>
    implements $PathogenItemCopyWith<$Res> {
  factory _$$PathogenItemImplCopyWith(
          _$PathogenItemImpl value, $Res Function(_$PathogenItemImpl) then) =
      __$$PathogenItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'pathogen_type') String? pathogenType});
}

/// @nodoc
class __$$PathogenItemImplCopyWithImpl<$Res>
    extends _$PathogenItemCopyWithImpl<$Res, _$PathogenItemImpl>
    implements _$$PathogenItemImplCopyWith<$Res> {
  __$$PathogenItemImplCopyWithImpl(
      _$PathogenItemImpl _value, $Res Function(_$PathogenItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PathogenItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? pathogenType = freezed,
  }) {
    return _then(_$PathogenItemImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pathogenType: freezed == pathogenType
          ? _value.pathogenType
          : pathogenType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PathogenItemImpl implements _PathogenItem {
  const _$PathogenItemImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'pathogen_type') this.pathogenType});

  factory _$PathogenItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PathogenItemImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'pathogen_type')
  final String? pathogenType;

  @override
  String toString() {
    return 'PathogenItem(name: $name, pathogenType: $pathogenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathogenItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pathogenType, pathogenType) ||
                other.pathogenType == pathogenType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, pathogenType);

  /// Create a copy of PathogenItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PathogenItemImplCopyWith<_$PathogenItemImpl> get copyWith =>
      __$$PathogenItemImplCopyWithImpl<_$PathogenItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PathogenItemImplToJson(
      this,
    );
  }
}

abstract class _PathogenItem implements PathogenItem {
  const factory _PathogenItem(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'pathogen_type') final String? pathogenType}) =
      _$PathogenItemImpl;

  factory _PathogenItem.fromJson(Map<String, dynamic> json) =
      _$PathogenItemImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'pathogen_type')
  String? get pathogenType;

  /// Create a copy of PathogenItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PathogenItemImplCopyWith<_$PathogenItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegularEvent _$RegularEventFromJson(Map<String, dynamic> json) {
  return _RegularEvent.fromJson(json);
}

/// @nodoc
mixin _$RegularEvent {
  @JsonKey(name: 'interval_max')
  int? get intervalMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'interval_min')
  int? get intervalMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'interval_unit')
  String? get intervalUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'repetition_count')
  int? get repetitionCount => throw _privateConstructorUsedError;

  /// Serializes this RegularEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegularEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegularEventCopyWith<RegularEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegularEventCopyWith<$Res> {
  factory $RegularEventCopyWith(
          RegularEvent value, $Res Function(RegularEvent) then) =
      _$RegularEventCopyWithImpl<$Res, RegularEvent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'interval_max') int? intervalMax,
      @JsonKey(name: 'interval_min') int? intervalMin,
      @JsonKey(name: 'interval_unit') String? intervalUnit,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'repetition_count') int? repetitionCount});
}

/// @nodoc
class _$RegularEventCopyWithImpl<$Res, $Val extends RegularEvent>
    implements $RegularEventCopyWith<$Res> {
  _$RegularEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegularEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intervalMax = freezed,
    Object? intervalMin = freezed,
    Object? intervalUnit = freezed,
    Object? name = freezed,
    Object? repetitionCount = freezed,
  }) {
    return _then(_value.copyWith(
      intervalMax: freezed == intervalMax
          ? _value.intervalMax
          : intervalMax // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalMin: freezed == intervalMin
          ? _value.intervalMin
          : intervalMin // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalUnit: freezed == intervalUnit
          ? _value.intervalUnit
          : intervalUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      repetitionCount: freezed == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegularEventImplCopyWith<$Res>
    implements $RegularEventCopyWith<$Res> {
  factory _$$RegularEventImplCopyWith(
          _$RegularEventImpl value, $Res Function(_$RegularEventImpl) then) =
      __$$RegularEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'interval_max') int? intervalMax,
      @JsonKey(name: 'interval_min') int? intervalMin,
      @JsonKey(name: 'interval_unit') String? intervalUnit,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'repetition_count') int? repetitionCount});
}

/// @nodoc
class __$$RegularEventImplCopyWithImpl<$Res>
    extends _$RegularEventCopyWithImpl<$Res, _$RegularEventImpl>
    implements _$$RegularEventImplCopyWith<$Res> {
  __$$RegularEventImplCopyWithImpl(
      _$RegularEventImpl _value, $Res Function(_$RegularEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegularEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intervalMax = freezed,
    Object? intervalMin = freezed,
    Object? intervalUnit = freezed,
    Object? name = freezed,
    Object? repetitionCount = freezed,
  }) {
    return _then(_$RegularEventImpl(
      intervalMax: freezed == intervalMax
          ? _value.intervalMax
          : intervalMax // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalMin: freezed == intervalMin
          ? _value.intervalMin
          : intervalMin // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalUnit: freezed == intervalUnit
          ? _value.intervalUnit
          : intervalUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      repetitionCount: freezed == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegularEventImpl implements _RegularEvent {
  const _$RegularEventImpl(
      {@JsonKey(name: 'interval_max') this.intervalMax,
      @JsonKey(name: 'interval_min') this.intervalMin,
      @JsonKey(name: 'interval_unit') this.intervalUnit,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'repetition_count') this.repetitionCount});

  factory _$RegularEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegularEventImplFromJson(json);

  @override
  @JsonKey(name: 'interval_max')
  final int? intervalMax;
  @override
  @JsonKey(name: 'interval_min')
  final int? intervalMin;
  @override
  @JsonKey(name: 'interval_unit')
  final String? intervalUnit;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'repetition_count')
  final int? repetitionCount;

  @override
  String toString() {
    return 'RegularEvent(intervalMax: $intervalMax, intervalMin: $intervalMin, intervalUnit: $intervalUnit, name: $name, repetitionCount: $repetitionCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegularEventImpl &&
            (identical(other.intervalMax, intervalMax) ||
                other.intervalMax == intervalMax) &&
            (identical(other.intervalMin, intervalMin) ||
                other.intervalMin == intervalMin) &&
            (identical(other.intervalUnit, intervalUnit) ||
                other.intervalUnit == intervalUnit) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.repetitionCount, repetitionCount) ||
                other.repetitionCount == repetitionCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, intervalMax, intervalMin,
      intervalUnit, name, repetitionCount);

  /// Create a copy of RegularEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegularEventImplCopyWith<_$RegularEventImpl> get copyWith =>
      __$$RegularEventImplCopyWithImpl<_$RegularEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegularEventImplToJson(
      this,
    );
  }
}

abstract class _RegularEvent implements RegularEvent {
  const factory _RegularEvent(
          {@JsonKey(name: 'interval_max') final int? intervalMax,
          @JsonKey(name: 'interval_min') final int? intervalMin,
          @JsonKey(name: 'interval_unit') final String? intervalUnit,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'repetition_count') final int? repetitionCount}) =
      _$RegularEventImpl;

  factory _RegularEvent.fromJson(Map<String, dynamic> json) =
      _$RegularEventImpl.fromJson;

  @override
  @JsonKey(name: 'interval_max')
  int? get intervalMax;
  @override
  @JsonKey(name: 'interval_min')
  int? get intervalMin;
  @override
  @JsonKey(name: 'interval_unit')
  String? get intervalUnit;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'repetition_count')
  int? get repetitionCount;

  /// Create a copy of RegularEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegularEventImplCopyWith<_$RegularEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlantMisc _$PlantMiscFromJson(Map<String, dynamic> json) {
  return _PlantMisc.fromJson(json);
}

/// @nodoc
mixin _$PlantMisc {
  @JsonKey(name: 'rank')
  String? get rank => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  int? get year => throw _privateConstructorUsedError;

  /// Serializes this PlantMisc to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantMisc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantMiscCopyWith<PlantMisc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantMiscCopyWith<$Res> {
  factory $PlantMiscCopyWith(PlantMisc value, $Res Function(PlantMisc) then) =
      _$PlantMiscCopyWithImpl<$Res, PlantMisc>;
  @useResult
  $Res call(
      {@JsonKey(name: 'rank') String? rank, @JsonKey(name: 'year') int? year});
}

/// @nodoc
class _$PlantMiscCopyWithImpl<$Res, $Val extends PlantMisc>
    implements $PlantMiscCopyWith<$Res> {
  _$PlantMiscCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantMisc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantMiscImplCopyWith<$Res>
    implements $PlantMiscCopyWith<$Res> {
  factory _$$PlantMiscImplCopyWith(
          _$PlantMiscImpl value, $Res Function(_$PlantMiscImpl) then) =
      __$$PlantMiscImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rank') String? rank, @JsonKey(name: 'year') int? year});
}

/// @nodoc
class __$$PlantMiscImplCopyWithImpl<$Res>
    extends _$PlantMiscCopyWithImpl<$Res, _$PlantMiscImpl>
    implements _$$PlantMiscImplCopyWith<$Res> {
  __$$PlantMiscImplCopyWithImpl(
      _$PlantMiscImpl _value, $Res Function(_$PlantMiscImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantMisc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = freezed,
    Object? year = freezed,
  }) {
    return _then(_$PlantMiscImpl(
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantMiscImpl implements _PlantMisc {
  const _$PlantMiscImpl(
      {@JsonKey(name: 'rank') this.rank, @JsonKey(name: 'year') this.year});

  factory _$PlantMiscImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantMiscImplFromJson(json);

  @override
  @JsonKey(name: 'rank')
  final String? rank;
  @override
  @JsonKey(name: 'year')
  final int? year;

  @override
  String toString() {
    return 'PlantMisc(rank: $rank, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantMiscImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rank, year);

  /// Create a copy of PlantMisc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantMiscImplCopyWith<_$PlantMiscImpl> get copyWith =>
      __$$PlantMiscImplCopyWithImpl<_$PlantMiscImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantMiscImplToJson(
      this,
    );
  }
}

abstract class _PlantMisc implements PlantMisc {
  const factory _PlantMisc(
      {@JsonKey(name: 'rank') final String? rank,
      @JsonKey(name: 'year') final int? year}) = _$PlantMiscImpl;

  factory _PlantMisc.fromJson(Map<String, dynamic> json) =
      _$PlantMiscImpl.fromJson;

  @override
  @JsonKey(name: 'rank')
  String? get rank;
  @override
  @JsonKey(name: 'year')
  int? get year;

  /// Create a copy of PlantMisc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantMiscImplCopyWith<_$PlantMiscImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SynonymItem _$SynonymItemFromJson(Map<String, dynamic> json) {
  return _SynonymItem.fromJson(json);
}

/// @nodoc
mixin _$SynonymItem {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this SynonymItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SynonymItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SynonymItemCopyWith<SynonymItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SynonymItemCopyWith<$Res> {
  factory $SynonymItemCopyWith(
          SynonymItem value, $Res Function(SynonymItem) then) =
      _$SynonymItemCopyWithImpl<$Res, SynonymItem>;
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$SynonymItemCopyWithImpl<$Res, $Val extends SynonymItem>
    implements $SynonymItemCopyWith<$Res> {
  _$SynonymItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SynonymItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SynonymItemImplCopyWith<$Res>
    implements $SynonymItemCopyWith<$Res> {
  factory _$$SynonymItemImplCopyWith(
          _$SynonymItemImpl value, $Res Function(_$SynonymItemImpl) then) =
      __$$SynonymItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$SynonymItemImplCopyWithImpl<$Res>
    extends _$SynonymItemCopyWithImpl<$Res, _$SynonymItemImpl>
    implements _$$SynonymItemImplCopyWith<$Res> {
  __$$SynonymItemImplCopyWithImpl(
      _$SynonymItemImpl _value, $Res Function(_$SynonymItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SynonymItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$SynonymItemImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SynonymItemImpl implements _SynonymItem {
  const _$SynonymItemImpl({@JsonKey(name: 'name') this.name});

  factory _$SynonymItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SynonymItemImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'SynonymItem(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SynonymItemImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of SynonymItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SynonymItemImplCopyWith<_$SynonymItemImpl> get copyWith =>
      __$$SynonymItemImplCopyWithImpl<_$SynonymItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SynonymItemImplToJson(
      this,
    );
  }
}

abstract class _SynonymItem implements SynonymItem {
  const factory _SynonymItem({@JsonKey(name: 'name') final String? name}) =
      _$SynonymItemImpl;

  factory _SynonymItem.fromJson(Map<String, dynamic> json) =
      _$SynonymItemImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of SynonymItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SynonymItemImplCopyWith<_$SynonymItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlantTag _$PlantTagFromJson(Map<String, dynamic> json) {
  return _PlantTag.fromJson(json);
}

/// @nodoc
mixin _$PlantTag {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this PlantTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantTagCopyWith<PlantTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantTagCopyWith<$Res> {
  factory $PlantTagCopyWith(PlantTag value, $Res Function(PlantTag) then) =
      _$PlantTagCopyWithImpl<$Res, PlantTag>;
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$PlantTagCopyWithImpl<$Res, $Val extends PlantTag>
    implements $PlantTagCopyWith<$Res> {
  _$PlantTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantTagImplCopyWith<$Res>
    implements $PlantTagCopyWith<$Res> {
  factory _$$PlantTagImplCopyWith(
          _$PlantTagImpl value, $Res Function(_$PlantTagImpl) then) =
      __$$PlantTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$PlantTagImplCopyWithImpl<$Res>
    extends _$PlantTagCopyWithImpl<$Res, _$PlantTagImpl>
    implements _$$PlantTagImplCopyWith<$Res> {
  __$$PlantTagImplCopyWithImpl(
      _$PlantTagImpl _value, $Res Function(_$PlantTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$PlantTagImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantTagImpl implements _PlantTag {
  const _$PlantTagImpl({@JsonKey(name: 'name') this.name});

  factory _$PlantTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantTagImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'PlantTag(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantTagImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of PlantTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantTagImplCopyWith<_$PlantTagImpl> get copyWith =>
      __$$PlantTagImplCopyWithImpl<_$PlantTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantTagImplToJson(
      this,
    );
  }
}

abstract class _PlantTag implements PlantTag {
  const factory _PlantTag({@JsonKey(name: 'name') final String? name}) =
      _$PlantTagImpl;

  factory _PlantTag.fromJson(Map<String, dynamic> json) =
      _$PlantTagImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of PlantTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantTagImplCopyWith<_$PlantTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Source _$SourceFromJson(Map<String, dynamic> json) {
  return _Source.fromJson(json);
}

/// @nodoc
mixin _$Source {
  @JsonKey(name: 'last_update')
  DateTime? get lastUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'sid')
  String? get sid => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_url')
  String? get sourceUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'citation')
  String? get citation => throw _privateConstructorUsedError;

  /// Serializes this Source to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceCopyWith<Source> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceCopyWith<$Res> {
  factory $SourceCopyWith(Source value, $Res Function(Source) then) =
      _$SourceCopyWithImpl<$Res, Source>;
  @useResult
  $Res call(
      {@JsonKey(name: 'last_update') DateTime? lastUpdate,
      @JsonKey(name: 'sid') String? sid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'source_url') String? sourceUrl,
      @JsonKey(name: 'citation') String? citation});
}

/// @nodoc
class _$SourceCopyWithImpl<$Res, $Val extends Source>
    implements $SourceCopyWith<$Res> {
  _$SourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdate = freezed,
    Object? sid = freezed,
    Object? name = freezed,
    Object? sourceUrl = freezed,
    Object? citation = freezed,
  }) {
    return _then(_value.copyWith(
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sid: freezed == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceUrl: freezed == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      citation: freezed == citation
          ? _value.citation
          : citation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceImplCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$SourceImplCopyWith(
          _$SourceImpl value, $Res Function(_$SourceImpl) then) =
      __$$SourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'last_update') DateTime? lastUpdate,
      @JsonKey(name: 'sid') String? sid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'source_url') String? sourceUrl,
      @JsonKey(name: 'citation') String? citation});
}

/// @nodoc
class __$$SourceImplCopyWithImpl<$Res>
    extends _$SourceCopyWithImpl<$Res, _$SourceImpl>
    implements _$$SourceImplCopyWith<$Res> {
  __$$SourceImplCopyWithImpl(
      _$SourceImpl _value, $Res Function(_$SourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdate = freezed,
    Object? sid = freezed,
    Object? name = freezed,
    Object? sourceUrl = freezed,
    Object? citation = freezed,
  }) {
    return _then(_$SourceImpl(
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sid: freezed == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceUrl: freezed == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      citation: freezed == citation
          ? _value.citation
          : citation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceImpl implements _Source {
  const _$SourceImpl(
      {@JsonKey(name: 'last_update') this.lastUpdate,
      @JsonKey(name: 'sid') this.sid,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'source_url') this.sourceUrl,
      @JsonKey(name: 'citation') this.citation});

  factory _$SourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceImplFromJson(json);

  @override
  @JsonKey(name: 'last_update')
  final DateTime? lastUpdate;
  @override
  @JsonKey(name: 'sid')
  final String? sid;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'source_url')
  final String? sourceUrl;
  @override
  @JsonKey(name: 'citation')
  final String? citation;

  @override
  String toString() {
    return 'Source(lastUpdate: $lastUpdate, sid: $sid, name: $name, sourceUrl: $sourceUrl, citation: $citation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceImpl &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.sid, sid) || other.sid == sid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            (identical(other.citation, citation) ||
                other.citation == citation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lastUpdate, sid, name, sourceUrl, citation);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      __$$SourceImplCopyWithImpl<_$SourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceImplToJson(
      this,
    );
  }
}

abstract class _Source implements Source {
  const factory _Source(
      {@JsonKey(name: 'last_update') final DateTime? lastUpdate,
      @JsonKey(name: 'sid') final String? sid,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'source_url') final String? sourceUrl,
      @JsonKey(name: 'citation') final String? citation}) = _$SourceImpl;

  factory _Source.fromJson(Map<String, dynamic> json) = _$SourceImpl.fromJson;

  @override
  @JsonKey(name: 'last_update')
  DateTime? get lastUpdate;
  @override
  @JsonKey(name: 'sid')
  String? get sid;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'source_url')
  String? get sourceUrl;
  @override
  @JsonKey(name: 'citation')
  String? get citation;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
