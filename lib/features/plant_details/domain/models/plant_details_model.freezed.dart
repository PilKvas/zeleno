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
  @JsonKey(name: "main_common_name")
  String? get mainCommonName => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "synonyms")
  List<String>? get synonyms => throw _privateConstructorUsedError;
  @JsonKey(name: "sources")
  List<Source>? get sources => throw _privateConstructorUsedError;
  @JsonKey(name: "common_names")
  Map<String, List<String>>? get commonNames =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  Images? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "pathogens")
  Pathogens? get pathogens => throw _privateConstructorUsedError;
  @JsonKey(name: "growth_tips")
  GrowthTips? get growthTips => throw _privateConstructorUsedError;
  @JsonKey(name: "distributions")
  List<Distribution>? get distributions => throw _privateConstructorUsedError;
  @JsonKey(name: "regular_events")
  List<RegularEvent>? get regularEvents => throw _privateConstructorUsedError;
  @JsonKey(name: "parts_color")
  PartsColor? get partsColor => throw _privateConstructorUsedError;
  @JsonKey(name: "exposure")
  Exposure? get exposure => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  dynamic get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "edible_part")
  List<dynamic>? get ediblePart => throw _privateConstructorUsedError;
  @JsonKey(name: "soil_type")
  List<Exposure>? get soilType => throw _privateConstructorUsedError;
  @JsonKey(name: "soil_moisture")
  List<Exposure>? get soilMoisture => throw _privateConstructorUsedError;
  @JsonKey(name: "soil_ph")
  List<Exposure>? get soilPh => throw _privateConstructorUsedError;
  @JsonKey(name: "position_sunlight")
  List<Exposure>? get positionSunlight => throw _privateConstructorUsedError;
  @JsonKey(name: "position_side")
  List<Exposure>? get positionSide => throw _privateConstructorUsedError;
  @JsonKey(name: "fragrance")
  List<Exposure>? get fragrance => throw _privateConstructorUsedError;
  @JsonKey(name: "harvest")
  List<Exposure>? get harvest => throw _privateConstructorUsedError;
  @JsonKey(name: "planting")
  List<Exposure>? get planting => throw _privateConstructorUsedError;
  @JsonKey(name: "toxicity")
  List<Exposure>? get toxicity => throw _privateConstructorUsedError;
  @JsonKey(name: "foliage")
  List<Exposure>? get foliage => throw _privateConstructorUsedError;
  @JsonKey(name: "habit")
  List<Exposure>? get habit => throw _privateConstructorUsedError;
  @JsonKey(name: "height_cm")
  HeightCm? get heightCm => throw _privateConstructorUsedError;
  @JsonKey(name: "years_to_max_height")
  HeightCm? get yearsToMaxHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "spread_cm")
  HeightCm? get spreadCm => throw _privateConstructorUsedError;
  @JsonKey(name: "scientific_classification")
  ScientificClassification? get scientificClassification =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "latin_name")
  String? get latinName => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "genus_description")
  String? get genusDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "edible")
  dynamic get edible => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "cultivation")
  String? get cultivation => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "modified")
  DateTime? get modified => throw _privateConstructorUsedError;
  @JsonKey(name: "misc")
  Misc? get misc => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "main_common_name") String? mainCommonName,
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
      @JsonKey(name: "misc") Misc? misc});

  $ImagesCopyWith<$Res>? get images;
  $PathogensCopyWith<$Res>? get pathogens;
  $GrowthTipsCopyWith<$Res>? get growthTips;
  $PartsColorCopyWith<$Res>? get partsColor;
  $ExposureCopyWith<$Res>? get exposure;
  $HeightCmCopyWith<$Res>? get heightCm;
  $HeightCmCopyWith<$Res>? get yearsToMaxHeight;
  $HeightCmCopyWith<$Res>? get spreadCm;
  $ScientificClassificationCopyWith<$Res>? get scientificClassification;
  $MiscCopyWith<$Res>? get misc;
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
    Object? mainCommonName = freezed,
    Object? id = freezed,
    Object? tags = freezed,
    Object? synonyms = freezed,
    Object? sources = freezed,
    Object? commonNames = freezed,
    Object? images = freezed,
    Object? pathogens = freezed,
    Object? growthTips = freezed,
    Object? distributions = freezed,
    Object? regularEvents = freezed,
    Object? partsColor = freezed,
    Object? exposure = freezed,
    Object? duration = freezed,
    Object? ediblePart = freezed,
    Object? soilType = freezed,
    Object? soilMoisture = freezed,
    Object? soilPh = freezed,
    Object? positionSunlight = freezed,
    Object? positionSide = freezed,
    Object? fragrance = freezed,
    Object? harvest = freezed,
    Object? planting = freezed,
    Object? toxicity = freezed,
    Object? foliage = freezed,
    Object? habit = freezed,
    Object? heightCm = freezed,
    Object? yearsToMaxHeight = freezed,
    Object? spreadCm = freezed,
    Object? scientificClassification = freezed,
    Object? slug = freezed,
    Object? latinName = freezed,
    Object? imageUrl = freezed,
    Object? genusDescription = freezed,
    Object? edible = freezed,
    Object? rating = freezed,
    Object? cultivation = freezed,
    Object? created = freezed,
    Object? modified = freezed,
    Object? misc = freezed,
  }) {
    return _then(_value.copyWith(
      mainCommonName: freezed == mainCommonName
          ? _value.mainCommonName
          : mainCommonName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      synonyms: freezed == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
      commonNames: freezed == commonNames
          ? _value.commonNames
          : commonNames // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images?,
      pathogens: freezed == pathogens
          ? _value.pathogens
          : pathogens // ignore: cast_nullable_to_non_nullable
              as Pathogens?,
      growthTips: freezed == growthTips
          ? _value.growthTips
          : growthTips // ignore: cast_nullable_to_non_nullable
              as GrowthTips?,
      distributions: freezed == distributions
          ? _value.distributions
          : distributions // ignore: cast_nullable_to_non_nullable
              as List<Distribution>?,
      regularEvents: freezed == regularEvents
          ? _value.regularEvents
          : regularEvents // ignore: cast_nullable_to_non_nullable
              as List<RegularEvent>?,
      partsColor: freezed == partsColor
          ? _value.partsColor
          : partsColor // ignore: cast_nullable_to_non_nullable
              as PartsColor?,
      exposure: freezed == exposure
          ? _value.exposure
          : exposure // ignore: cast_nullable_to_non_nullable
              as Exposure?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ediblePart: freezed == ediblePart
          ? _value.ediblePart
          : ediblePart // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      soilType: freezed == soilType
          ? _value.soilType
          : soilType // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      soilMoisture: freezed == soilMoisture
          ? _value.soilMoisture
          : soilMoisture // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      soilPh: freezed == soilPh
          ? _value.soilPh
          : soilPh // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      positionSunlight: freezed == positionSunlight
          ? _value.positionSunlight
          : positionSunlight // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      positionSide: freezed == positionSide
          ? _value.positionSide
          : positionSide // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      fragrance: freezed == fragrance
          ? _value.fragrance
          : fragrance // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      harvest: freezed == harvest
          ? _value.harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      planting: freezed == planting
          ? _value.planting
          : planting // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      toxicity: freezed == toxicity
          ? _value.toxicity
          : toxicity // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      foliage: freezed == foliage
          ? _value.foliage
          : foliage // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      habit: freezed == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      heightCm: freezed == heightCm
          ? _value.heightCm
          : heightCm // ignore: cast_nullable_to_non_nullable
              as HeightCm?,
      yearsToMaxHeight: freezed == yearsToMaxHeight
          ? _value.yearsToMaxHeight
          : yearsToMaxHeight // ignore: cast_nullable_to_non_nullable
              as HeightCm?,
      spreadCm: freezed == spreadCm
          ? _value.spreadCm
          : spreadCm // ignore: cast_nullable_to_non_nullable
              as HeightCm?,
      scientificClassification: freezed == scientificClassification
          ? _value.scientificClassification
          : scientificClassification // ignore: cast_nullable_to_non_nullable
              as ScientificClassification?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      latinName: freezed == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      genusDescription: freezed == genusDescription
          ? _value.genusDescription
          : genusDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      edible: freezed == edible
          ? _value.edible
          : edible // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      cultivation: freezed == cultivation
          ? _value.cultivation
          : cultivation // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      misc: freezed == misc
          ? _value.misc
          : misc // ignore: cast_nullable_to_non_nullable
              as Misc?,
    ) as $Val);
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImagesCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $ImagesCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PathogensCopyWith<$Res>? get pathogens {
    if (_value.pathogens == null) {
      return null;
    }

    return $PathogensCopyWith<$Res>(_value.pathogens!, (value) {
      return _then(_value.copyWith(pathogens: value) as $Val);
    });
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GrowthTipsCopyWith<$Res>? get growthTips {
    if (_value.growthTips == null) {
      return null;
    }

    return $GrowthTipsCopyWith<$Res>(_value.growthTips!, (value) {
      return _then(_value.copyWith(growthTips: value) as $Val);
    });
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PartsColorCopyWith<$Res>? get partsColor {
    if (_value.partsColor == null) {
      return null;
    }

    return $PartsColorCopyWith<$Res>(_value.partsColor!, (value) {
      return _then(_value.copyWith(partsColor: value) as $Val);
    });
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExposureCopyWith<$Res>? get exposure {
    if (_value.exposure == null) {
      return null;
    }

    return $ExposureCopyWith<$Res>(_value.exposure!, (value) {
      return _then(_value.copyWith(exposure: value) as $Val);
    });
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeightCmCopyWith<$Res>? get heightCm {
    if (_value.heightCm == null) {
      return null;
    }

    return $HeightCmCopyWith<$Res>(_value.heightCm!, (value) {
      return _then(_value.copyWith(heightCm: value) as $Val);
    });
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeightCmCopyWith<$Res>? get yearsToMaxHeight {
    if (_value.yearsToMaxHeight == null) {
      return null;
    }

    return $HeightCmCopyWith<$Res>(_value.yearsToMaxHeight!, (value) {
      return _then(_value.copyWith(yearsToMaxHeight: value) as $Val);
    });
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeightCmCopyWith<$Res>? get spreadCm {
    if (_value.spreadCm == null) {
      return null;
    }

    return $HeightCmCopyWith<$Res>(_value.spreadCm!, (value) {
      return _then(_value.copyWith(spreadCm: value) as $Val);
    });
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScientificClassificationCopyWith<$Res>? get scientificClassification {
    if (_value.scientificClassification == null) {
      return null;
    }

    return $ScientificClassificationCopyWith<$Res>(
        _value.scientificClassification!, (value) {
      return _then(_value.copyWith(scientificClassification: value) as $Val);
    });
  }

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiscCopyWith<$Res>? get misc {
    if (_value.misc == null) {
      return null;
    }

    return $MiscCopyWith<$Res>(_value.misc!, (value) {
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
      {@JsonKey(name: "main_common_name") String? mainCommonName,
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
      @JsonKey(name: "misc") Misc? misc});

  @override
  $ImagesCopyWith<$Res>? get images;
  @override
  $PathogensCopyWith<$Res>? get pathogens;
  @override
  $GrowthTipsCopyWith<$Res>? get growthTips;
  @override
  $PartsColorCopyWith<$Res>? get partsColor;
  @override
  $ExposureCopyWith<$Res>? get exposure;
  @override
  $HeightCmCopyWith<$Res>? get heightCm;
  @override
  $HeightCmCopyWith<$Res>? get yearsToMaxHeight;
  @override
  $HeightCmCopyWith<$Res>? get spreadCm;
  @override
  $ScientificClassificationCopyWith<$Res>? get scientificClassification;
  @override
  $MiscCopyWith<$Res>? get misc;
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
    Object? mainCommonName = freezed,
    Object? id = freezed,
    Object? tags = freezed,
    Object? synonyms = freezed,
    Object? sources = freezed,
    Object? commonNames = freezed,
    Object? images = freezed,
    Object? pathogens = freezed,
    Object? growthTips = freezed,
    Object? distributions = freezed,
    Object? regularEvents = freezed,
    Object? partsColor = freezed,
    Object? exposure = freezed,
    Object? duration = freezed,
    Object? ediblePart = freezed,
    Object? soilType = freezed,
    Object? soilMoisture = freezed,
    Object? soilPh = freezed,
    Object? positionSunlight = freezed,
    Object? positionSide = freezed,
    Object? fragrance = freezed,
    Object? harvest = freezed,
    Object? planting = freezed,
    Object? toxicity = freezed,
    Object? foliage = freezed,
    Object? habit = freezed,
    Object? heightCm = freezed,
    Object? yearsToMaxHeight = freezed,
    Object? spreadCm = freezed,
    Object? scientificClassification = freezed,
    Object? slug = freezed,
    Object? latinName = freezed,
    Object? imageUrl = freezed,
    Object? genusDescription = freezed,
    Object? edible = freezed,
    Object? rating = freezed,
    Object? cultivation = freezed,
    Object? created = freezed,
    Object? modified = freezed,
    Object? misc = freezed,
  }) {
    return _then(_$PlantDetailsModelImpl(
      mainCommonName: freezed == mainCommonName
          ? _value.mainCommonName
          : mainCommonName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      synonyms: freezed == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sources: freezed == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
      commonNames: freezed == commonNames
          ? _value._commonNames
          : commonNames // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images?,
      pathogens: freezed == pathogens
          ? _value.pathogens
          : pathogens // ignore: cast_nullable_to_non_nullable
              as Pathogens?,
      growthTips: freezed == growthTips
          ? _value.growthTips
          : growthTips // ignore: cast_nullable_to_non_nullable
              as GrowthTips?,
      distributions: freezed == distributions
          ? _value._distributions
          : distributions // ignore: cast_nullable_to_non_nullable
              as List<Distribution>?,
      regularEvents: freezed == regularEvents
          ? _value._regularEvents
          : regularEvents // ignore: cast_nullable_to_non_nullable
              as List<RegularEvent>?,
      partsColor: freezed == partsColor
          ? _value.partsColor
          : partsColor // ignore: cast_nullable_to_non_nullable
              as PartsColor?,
      exposure: freezed == exposure
          ? _value.exposure
          : exposure // ignore: cast_nullable_to_non_nullable
              as Exposure?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ediblePart: freezed == ediblePart
          ? _value._ediblePart
          : ediblePart // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      soilType: freezed == soilType
          ? _value._soilType
          : soilType // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      soilMoisture: freezed == soilMoisture
          ? _value._soilMoisture
          : soilMoisture // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      soilPh: freezed == soilPh
          ? _value._soilPh
          : soilPh // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      positionSunlight: freezed == positionSunlight
          ? _value._positionSunlight
          : positionSunlight // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      positionSide: freezed == positionSide
          ? _value._positionSide
          : positionSide // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      fragrance: freezed == fragrance
          ? _value._fragrance
          : fragrance // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      harvest: freezed == harvest
          ? _value._harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      planting: freezed == planting
          ? _value._planting
          : planting // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      toxicity: freezed == toxicity
          ? _value._toxicity
          : toxicity // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      foliage: freezed == foliage
          ? _value._foliage
          : foliage // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      habit: freezed == habit
          ? _value._habit
          : habit // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      heightCm: freezed == heightCm
          ? _value.heightCm
          : heightCm // ignore: cast_nullable_to_non_nullable
              as HeightCm?,
      yearsToMaxHeight: freezed == yearsToMaxHeight
          ? _value.yearsToMaxHeight
          : yearsToMaxHeight // ignore: cast_nullable_to_non_nullable
              as HeightCm?,
      spreadCm: freezed == spreadCm
          ? _value.spreadCm
          : spreadCm // ignore: cast_nullable_to_non_nullable
              as HeightCm?,
      scientificClassification: freezed == scientificClassification
          ? _value.scientificClassification
          : scientificClassification // ignore: cast_nullable_to_non_nullable
              as ScientificClassification?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      latinName: freezed == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      genusDescription: freezed == genusDescription
          ? _value.genusDescription
          : genusDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      edible: freezed == edible
          ? _value.edible
          : edible // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      cultivation: freezed == cultivation
          ? _value.cultivation
          : cultivation // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      misc: freezed == misc
          ? _value.misc
          : misc // ignore: cast_nullable_to_non_nullable
              as Misc?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantDetailsModelImpl implements _PlantDetailsModel {
  const _$PlantDetailsModelImpl(
      {@JsonKey(name: "main_common_name") this.mainCommonName,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "synonyms") final List<String>? synonyms,
      @JsonKey(name: "sources") final List<Source>? sources,
      @JsonKey(name: "common_names")
      final Map<String, List<String>>? commonNames,
      @JsonKey(name: "images") this.images,
      @JsonKey(name: "pathogens") this.pathogens,
      @JsonKey(name: "growth_tips") this.growthTips,
      @JsonKey(name: "distributions") final List<Distribution>? distributions,
      @JsonKey(name: "regular_events") final List<RegularEvent>? regularEvents,
      @JsonKey(name: "parts_color") this.partsColor,
      @JsonKey(name: "exposure") this.exposure,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "edible_part") final List<dynamic>? ediblePart,
      @JsonKey(name: "soil_type") final List<Exposure>? soilType,
      @JsonKey(name: "soil_moisture") final List<Exposure>? soilMoisture,
      @JsonKey(name: "soil_ph") final List<Exposure>? soilPh,
      @JsonKey(name: "position_sunlight")
      final List<Exposure>? positionSunlight,
      @JsonKey(name: "position_side") final List<Exposure>? positionSide,
      @JsonKey(name: "fragrance") final List<Exposure>? fragrance,
      @JsonKey(name: "harvest") final List<Exposure>? harvest,
      @JsonKey(name: "planting") final List<Exposure>? planting,
      @JsonKey(name: "toxicity") final List<Exposure>? toxicity,
      @JsonKey(name: "foliage") final List<Exposure>? foliage,
      @JsonKey(name: "habit") final List<Exposure>? habit,
      @JsonKey(name: "height_cm") this.heightCm,
      @JsonKey(name: "years_to_max_height") this.yearsToMaxHeight,
      @JsonKey(name: "spread_cm") this.spreadCm,
      @JsonKey(name: "scientific_classification") this.scientificClassification,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "latin_name") this.latinName,
      @JsonKey(name: "image_url") this.imageUrl,
      @JsonKey(name: "genus_description") this.genusDescription,
      @JsonKey(name: "edible") this.edible,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "cultivation") this.cultivation,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "modified") this.modified,
      @JsonKey(name: "misc") this.misc})
      : _tags = tags,
        _synonyms = synonyms,
        _sources = sources,
        _commonNames = commonNames,
        _distributions = distributions,
        _regularEvents = regularEvents,
        _ediblePart = ediblePart,
        _soilType = soilType,
        _soilMoisture = soilMoisture,
        _soilPh = soilPh,
        _positionSunlight = positionSunlight,
        _positionSide = positionSide,
        _fragrance = fragrance,
        _harvest = harvest,
        _planting = planting,
        _toxicity = toxicity,
        _foliage = foliage,
        _habit = habit;

  factory _$PlantDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "main_common_name")
  final String? mainCommonName;
  @override
  @JsonKey(name: "id")
  final int? id;
  final List<String>? _tags;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _synonyms;
  @override
  @JsonKey(name: "synonyms")
  List<String>? get synonyms {
    final value = _synonyms;
    if (value == null) return null;
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Source>? _sources;
  @override
  @JsonKey(name: "sources")
  List<Source>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, List<String>>? _commonNames;
  @override
  @JsonKey(name: "common_names")
  Map<String, List<String>>? get commonNames {
    final value = _commonNames;
    if (value == null) return null;
    if (_commonNames is EqualUnmodifiableMapView) return _commonNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: "images")
  final Images? images;
  @override
  @JsonKey(name: "pathogens")
  final Pathogens? pathogens;
  @override
  @JsonKey(name: "growth_tips")
  final GrowthTips? growthTips;
  final List<Distribution>? _distributions;
  @override
  @JsonKey(name: "distributions")
  List<Distribution>? get distributions {
    final value = _distributions;
    if (value == null) return null;
    if (_distributions is EqualUnmodifiableListView) return _distributions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RegularEvent>? _regularEvents;
  @override
  @JsonKey(name: "regular_events")
  List<RegularEvent>? get regularEvents {
    final value = _regularEvents;
    if (value == null) return null;
    if (_regularEvents is EqualUnmodifiableListView) return _regularEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "parts_color")
  final PartsColor? partsColor;
  @override
  @JsonKey(name: "exposure")
  final Exposure? exposure;
  @override
  @JsonKey(name: "duration")
  final dynamic duration;
  final List<dynamic>? _ediblePart;
  @override
  @JsonKey(name: "edible_part")
  List<dynamic>? get ediblePart {
    final value = _ediblePart;
    if (value == null) return null;
    if (_ediblePart is EqualUnmodifiableListView) return _ediblePart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _soilType;
  @override
  @JsonKey(name: "soil_type")
  List<Exposure>? get soilType {
    final value = _soilType;
    if (value == null) return null;
    if (_soilType is EqualUnmodifiableListView) return _soilType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _soilMoisture;
  @override
  @JsonKey(name: "soil_moisture")
  List<Exposure>? get soilMoisture {
    final value = _soilMoisture;
    if (value == null) return null;
    if (_soilMoisture is EqualUnmodifiableListView) return _soilMoisture;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _soilPh;
  @override
  @JsonKey(name: "soil_ph")
  List<Exposure>? get soilPh {
    final value = _soilPh;
    if (value == null) return null;
    if (_soilPh is EqualUnmodifiableListView) return _soilPh;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _positionSunlight;
  @override
  @JsonKey(name: "position_sunlight")
  List<Exposure>? get positionSunlight {
    final value = _positionSunlight;
    if (value == null) return null;
    if (_positionSunlight is EqualUnmodifiableListView)
      return _positionSunlight;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _positionSide;
  @override
  @JsonKey(name: "position_side")
  List<Exposure>? get positionSide {
    final value = _positionSide;
    if (value == null) return null;
    if (_positionSide is EqualUnmodifiableListView) return _positionSide;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _fragrance;
  @override
  @JsonKey(name: "fragrance")
  List<Exposure>? get fragrance {
    final value = _fragrance;
    if (value == null) return null;
    if (_fragrance is EqualUnmodifiableListView) return _fragrance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _harvest;
  @override
  @JsonKey(name: "harvest")
  List<Exposure>? get harvest {
    final value = _harvest;
    if (value == null) return null;
    if (_harvest is EqualUnmodifiableListView) return _harvest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _planting;
  @override
  @JsonKey(name: "planting")
  List<Exposure>? get planting {
    final value = _planting;
    if (value == null) return null;
    if (_planting is EqualUnmodifiableListView) return _planting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _toxicity;
  @override
  @JsonKey(name: "toxicity")
  List<Exposure>? get toxicity {
    final value = _toxicity;
    if (value == null) return null;
    if (_toxicity is EqualUnmodifiableListView) return _toxicity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _foliage;
  @override
  @JsonKey(name: "foliage")
  List<Exposure>? get foliage {
    final value = _foliage;
    if (value == null) return null;
    if (_foliage is EqualUnmodifiableListView) return _foliage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exposure>? _habit;
  @override
  @JsonKey(name: "habit")
  List<Exposure>? get habit {
    final value = _habit;
    if (value == null) return null;
    if (_habit is EqualUnmodifiableListView) return _habit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "height_cm")
  final HeightCm? heightCm;
  @override
  @JsonKey(name: "years_to_max_height")
  final HeightCm? yearsToMaxHeight;
  @override
  @JsonKey(name: "spread_cm")
  final HeightCm? spreadCm;
  @override
  @JsonKey(name: "scientific_classification")
  final ScientificClassification? scientificClassification;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "latin_name")
  final String? latinName;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  @JsonKey(name: "genus_description")
  final String? genusDescription;
  @override
  @JsonKey(name: "edible")
  final dynamic edible;
  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "cultivation")
  final String? cultivation;
  @override
  @JsonKey(name: "created")
  final DateTime? created;
  @override
  @JsonKey(name: "modified")
  final DateTime? modified;
  @override
  @JsonKey(name: "misc")
  final Misc? misc;

  @override
  String toString() {
    return 'PlantDetailsModel(mainCommonName: $mainCommonName, id: $id, tags: $tags, synonyms: $synonyms, sources: $sources, commonNames: $commonNames, images: $images, pathogens: $pathogens, growthTips: $growthTips, distributions: $distributions, regularEvents: $regularEvents, partsColor: $partsColor, exposure: $exposure, duration: $duration, ediblePart: $ediblePart, soilType: $soilType, soilMoisture: $soilMoisture, soilPh: $soilPh, positionSunlight: $positionSunlight, positionSide: $positionSide, fragrance: $fragrance, harvest: $harvest, planting: $planting, toxicity: $toxicity, foliage: $foliage, habit: $habit, heightCm: $heightCm, yearsToMaxHeight: $yearsToMaxHeight, spreadCm: $spreadCm, scientificClassification: $scientificClassification, slug: $slug, latinName: $latinName, imageUrl: $imageUrl, genusDescription: $genusDescription, edible: $edible, rating: $rating, cultivation: $cultivation, created: $created, modified: $modified, misc: $misc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantDetailsModelImpl &&
            (identical(other.mainCommonName, mainCommonName) ||
                other.mainCommonName == mainCommonName) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality()
                .equals(other._commonNames, _commonNames) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.pathogens, pathogens) ||
                other.pathogens == pathogens) &&
            (identical(other.growthTips, growthTips) ||
                other.growthTips == growthTips) &&
            const DeepCollectionEquality()
                .equals(other._distributions, _distributions) &&
            const DeepCollectionEquality()
                .equals(other._regularEvents, _regularEvents) &&
            (identical(other.partsColor, partsColor) ||
                other.partsColor == partsColor) &&
            (identical(other.exposure, exposure) ||
                other.exposure == exposure) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other._ediblePart, _ediblePart) &&
            const DeepCollectionEquality().equals(other._soilType, _soilType) &&
            const DeepCollectionEquality()
                .equals(other._soilMoisture, _soilMoisture) &&
            const DeepCollectionEquality().equals(other._soilPh, _soilPh) &&
            const DeepCollectionEquality()
                .equals(other._positionSunlight, _positionSunlight) &&
            const DeepCollectionEquality()
                .equals(other._positionSide, _positionSide) &&
            const DeepCollectionEquality()
                .equals(other._fragrance, _fragrance) &&
            const DeepCollectionEquality().equals(other._harvest, _harvest) &&
            const DeepCollectionEquality().equals(other._planting, _planting) &&
            const DeepCollectionEquality().equals(other._toxicity, _toxicity) &&
            const DeepCollectionEquality().equals(other._foliage, _foliage) &&
            const DeepCollectionEquality().equals(other._habit, _habit) &&
            (identical(other.heightCm, heightCm) ||
                other.heightCm == heightCm) &&
            (identical(other.yearsToMaxHeight, yearsToMaxHeight) ||
                other.yearsToMaxHeight == yearsToMaxHeight) &&
            (identical(other.spreadCm, spreadCm) ||
                other.spreadCm == spreadCm) &&
            (identical(
                    other.scientificClassification, scientificClassification) ||
                other.scientificClassification == scientificClassification) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.latinName, latinName) ||
                other.latinName == latinName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.genusDescription, genusDescription) ||
                other.genusDescription == genusDescription) &&
            const DeepCollectionEquality().equals(other.edible, edible) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.cultivation, cultivation) ||
                other.cultivation == cultivation) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.misc, misc) || other.misc == misc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        mainCommonName,
        id,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_synonyms),
        const DeepCollectionEquality().hash(_sources),
        const DeepCollectionEquality().hash(_commonNames),
        images,
        pathogens,
        growthTips,
        const DeepCollectionEquality().hash(_distributions),
        const DeepCollectionEquality().hash(_regularEvents),
        partsColor,
        exposure,
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(_ediblePart),
        const DeepCollectionEquality().hash(_soilType),
        const DeepCollectionEquality().hash(_soilMoisture),
        const DeepCollectionEquality().hash(_soilPh),
        const DeepCollectionEquality().hash(_positionSunlight),
        const DeepCollectionEquality().hash(_positionSide),
        const DeepCollectionEquality().hash(_fragrance),
        const DeepCollectionEquality().hash(_harvest),
        const DeepCollectionEquality().hash(_planting),
        const DeepCollectionEquality().hash(_toxicity),
        const DeepCollectionEquality().hash(_foliage),
        const DeepCollectionEquality().hash(_habit),
        heightCm,
        yearsToMaxHeight,
        spreadCm,
        scientificClassification,
        slug,
        latinName,
        imageUrl,
        genusDescription,
        const DeepCollectionEquality().hash(edible),
        rating,
        cultivation,
        created,
        modified,
        misc
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
      {@JsonKey(name: "main_common_name") final String? mainCommonName,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "synonyms") final List<String>? synonyms,
      @JsonKey(name: "sources") final List<Source>? sources,
      @JsonKey(name: "common_names")
      final Map<String, List<String>>? commonNames,
      @JsonKey(name: "images") final Images? images,
      @JsonKey(name: "pathogens") final Pathogens? pathogens,
      @JsonKey(name: "growth_tips") final GrowthTips? growthTips,
      @JsonKey(name: "distributions") final List<Distribution>? distributions,
      @JsonKey(name: "regular_events") final List<RegularEvent>? regularEvents,
      @JsonKey(name: "parts_color") final PartsColor? partsColor,
      @JsonKey(name: "exposure") final Exposure? exposure,
      @JsonKey(name: "duration") final dynamic duration,
      @JsonKey(name: "edible_part") final List<dynamic>? ediblePart,
      @JsonKey(name: "soil_type") final List<Exposure>? soilType,
      @JsonKey(name: "soil_moisture") final List<Exposure>? soilMoisture,
      @JsonKey(name: "soil_ph") final List<Exposure>? soilPh,
      @JsonKey(name: "position_sunlight")
      final List<Exposure>? positionSunlight,
      @JsonKey(name: "position_side") final List<Exposure>? positionSide,
      @JsonKey(name: "fragrance") final List<Exposure>? fragrance,
      @JsonKey(name: "harvest") final List<Exposure>? harvest,
      @JsonKey(name: "planting") final List<Exposure>? planting,
      @JsonKey(name: "toxicity") final List<Exposure>? toxicity,
      @JsonKey(name: "foliage") final List<Exposure>? foliage,
      @JsonKey(name: "habit") final List<Exposure>? habit,
      @JsonKey(name: "height_cm") final HeightCm? heightCm,
      @JsonKey(name: "years_to_max_height") final HeightCm? yearsToMaxHeight,
      @JsonKey(name: "spread_cm") final HeightCm? spreadCm,
      @JsonKey(name: "scientific_classification")
      final ScientificClassification? scientificClassification,
      @JsonKey(name: "slug") final String? slug,
      @JsonKey(name: "latin_name") final String? latinName,
      @JsonKey(name: "image_url") final String? imageUrl,
      @JsonKey(name: "genus_description") final String? genusDescription,
      @JsonKey(name: "edible") final dynamic edible,
      @JsonKey(name: "rating") final int? rating,
      @JsonKey(name: "cultivation") final String? cultivation,
      @JsonKey(name: "created") final DateTime? created,
      @JsonKey(name: "modified") final DateTime? modified,
      @JsonKey(name: "misc") final Misc? misc}) = _$PlantDetailsModelImpl;

  factory _PlantDetailsModel.fromJson(Map<String, dynamic> json) =
      _$PlantDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "main_common_name")
  String? get mainCommonName;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags;
  @override
  @JsonKey(name: "synonyms")
  List<String>? get synonyms;
  @override
  @JsonKey(name: "sources")
  List<Source>? get sources;
  @override
  @JsonKey(name: "common_names")
  Map<String, List<String>>? get commonNames;
  @override
  @JsonKey(name: "images")
  Images? get images;
  @override
  @JsonKey(name: "pathogens")
  Pathogens? get pathogens;
  @override
  @JsonKey(name: "growth_tips")
  GrowthTips? get growthTips;
  @override
  @JsonKey(name: "distributions")
  List<Distribution>? get distributions;
  @override
  @JsonKey(name: "regular_events")
  List<RegularEvent>? get regularEvents;
  @override
  @JsonKey(name: "parts_color")
  PartsColor? get partsColor;
  @override
  @JsonKey(name: "exposure")
  Exposure? get exposure;
  @override
  @JsonKey(name: "duration")
  dynamic get duration;
  @override
  @JsonKey(name: "edible_part")
  List<dynamic>? get ediblePart;
  @override
  @JsonKey(name: "soil_type")
  List<Exposure>? get soilType;
  @override
  @JsonKey(name: "soil_moisture")
  List<Exposure>? get soilMoisture;
  @override
  @JsonKey(name: "soil_ph")
  List<Exposure>? get soilPh;
  @override
  @JsonKey(name: "position_sunlight")
  List<Exposure>? get positionSunlight;
  @override
  @JsonKey(name: "position_side")
  List<Exposure>? get positionSide;
  @override
  @JsonKey(name: "fragrance")
  List<Exposure>? get fragrance;
  @override
  @JsonKey(name: "harvest")
  List<Exposure>? get harvest;
  @override
  @JsonKey(name: "planting")
  List<Exposure>? get planting;
  @override
  @JsonKey(name: "toxicity")
  List<Exposure>? get toxicity;
  @override
  @JsonKey(name: "foliage")
  List<Exposure>? get foliage;
  @override
  @JsonKey(name: "habit")
  List<Exposure>? get habit;
  @override
  @JsonKey(name: "height_cm")
  HeightCm? get heightCm;
  @override
  @JsonKey(name: "years_to_max_height")
  HeightCm? get yearsToMaxHeight;
  @override
  @JsonKey(name: "spread_cm")
  HeightCm? get spreadCm;
  @override
  @JsonKey(name: "scientific_classification")
  ScientificClassification? get scientificClassification;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "latin_name")
  String? get latinName;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(name: "genus_description")
  String? get genusDescription;
  @override
  @JsonKey(name: "edible")
  dynamic get edible;
  @override
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(name: "cultivation")
  String? get cultivation;
  @override
  @JsonKey(name: "created")
  DateTime? get created;
  @override
  @JsonKey(name: "modified")
  DateTime? get modified;
  @override
  @JsonKey(name: "misc")
  Misc? get misc;

  /// Create a copy of PlantDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantDetailsModelImplCopyWith<_$PlantDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Distribution _$DistributionFromJson(Map<String, dynamic> json) {
  return _Distribution.fromJson(json);
}

/// @nodoc
mixin _$Distribution {
  @JsonKey(name: "statuses")
  List<Exposure>? get statuses => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "tdwg_code")
  String? get tdwgCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tdwg_level")
  int? get tdwgLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "species_count")
  int? get speciesCount => throw _privateConstructorUsedError;

  /// Serializes this Distribution to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Distribution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistributionCopyWith<Distribution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistributionCopyWith<$Res> {
  factory $DistributionCopyWith(
          Distribution value, $Res Function(Distribution) then) =
      _$DistributionCopyWithImpl<$Res, Distribution>;
  @useResult
  $Res call(
      {@JsonKey(name: "statuses") List<Exposure>? statuses,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "tdwg_code") String? tdwgCode,
      @JsonKey(name: "tdwg_level") int? tdwgLevel,
      @JsonKey(name: "species_count") int? speciesCount});
}

/// @nodoc
class _$DistributionCopyWithImpl<$Res, $Val extends Distribution>
    implements $DistributionCopyWith<$Res> {
  _$DistributionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Distribution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statuses = freezed,
    Object? name = freezed,
    Object? tdwgCode = freezed,
    Object? tdwgLevel = freezed,
    Object? speciesCount = freezed,
  }) {
    return _then(_value.copyWith(
      statuses: freezed == statuses
          ? _value.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tdwgCode: freezed == tdwgCode
          ? _value.tdwgCode
          : tdwgCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tdwgLevel: freezed == tdwgLevel
          ? _value.tdwgLevel
          : tdwgLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      speciesCount: freezed == speciesCount
          ? _value.speciesCount
          : speciesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistributionImplCopyWith<$Res>
    implements $DistributionCopyWith<$Res> {
  factory _$$DistributionImplCopyWith(
          _$DistributionImpl value, $Res Function(_$DistributionImpl) then) =
      __$$DistributionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "statuses") List<Exposure>? statuses,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "tdwg_code") String? tdwgCode,
      @JsonKey(name: "tdwg_level") int? tdwgLevel,
      @JsonKey(name: "species_count") int? speciesCount});
}

/// @nodoc
class __$$DistributionImplCopyWithImpl<$Res>
    extends _$DistributionCopyWithImpl<$Res, _$DistributionImpl>
    implements _$$DistributionImplCopyWith<$Res> {
  __$$DistributionImplCopyWithImpl(
      _$DistributionImpl _value, $Res Function(_$DistributionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Distribution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statuses = freezed,
    Object? name = freezed,
    Object? tdwgCode = freezed,
    Object? tdwgLevel = freezed,
    Object? speciesCount = freezed,
  }) {
    return _then(_$DistributionImpl(
      statuses: freezed == statuses
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<Exposure>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tdwgCode: freezed == tdwgCode
          ? _value.tdwgCode
          : tdwgCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tdwgLevel: freezed == tdwgLevel
          ? _value.tdwgLevel
          : tdwgLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      speciesCount: freezed == speciesCount
          ? _value.speciesCount
          : speciesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistributionImpl implements _Distribution {
  const _$DistributionImpl(
      {@JsonKey(name: "statuses") final List<Exposure>? statuses,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "tdwg_code") this.tdwgCode,
      @JsonKey(name: "tdwg_level") this.tdwgLevel,
      @JsonKey(name: "species_count") this.speciesCount})
      : _statuses = statuses;

  factory _$DistributionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistributionImplFromJson(json);

  final List<Exposure>? _statuses;
  @override
  @JsonKey(name: "statuses")
  List<Exposure>? get statuses {
    final value = _statuses;
    if (value == null) return null;
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "tdwg_code")
  final String? tdwgCode;
  @override
  @JsonKey(name: "tdwg_level")
  final int? tdwgLevel;
  @override
  @JsonKey(name: "species_count")
  final int? speciesCount;

  @override
  String toString() {
    return 'Distribution(statuses: $statuses, name: $name, tdwgCode: $tdwgCode, tdwgLevel: $tdwgLevel, speciesCount: $speciesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistributionImpl &&
            const DeepCollectionEquality().equals(other._statuses, _statuses) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tdwgCode, tdwgCode) ||
                other.tdwgCode == tdwgCode) &&
            (identical(other.tdwgLevel, tdwgLevel) ||
                other.tdwgLevel == tdwgLevel) &&
            (identical(other.speciesCount, speciesCount) ||
                other.speciesCount == speciesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_statuses),
      name,
      tdwgCode,
      tdwgLevel,
      speciesCount);

  /// Create a copy of Distribution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistributionImplCopyWith<_$DistributionImpl> get copyWith =>
      __$$DistributionImplCopyWithImpl<_$DistributionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistributionImplToJson(
      this,
    );
  }
}

abstract class _Distribution implements Distribution {
  const factory _Distribution(
          {@JsonKey(name: "statuses") final List<Exposure>? statuses,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "tdwg_code") final String? tdwgCode,
          @JsonKey(name: "tdwg_level") final int? tdwgLevel,
          @JsonKey(name: "species_count") final int? speciesCount}) =
      _$DistributionImpl;

  factory _Distribution.fromJson(Map<String, dynamic> json) =
      _$DistributionImpl.fromJson;

  @override
  @JsonKey(name: "statuses")
  List<Exposure>? get statuses;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "tdwg_code")
  String? get tdwgCode;
  @override
  @JsonKey(name: "tdwg_level")
  int? get tdwgLevel;
  @override
  @JsonKey(name: "species_count")
  int? get speciesCount;

  /// Create a copy of Distribution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistributionImplCopyWith<_$DistributionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Exposure _$ExposureFromJson(Map<String, dynamic> json) {
  return _Exposure.fromJson(json);
}

/// @nodoc
mixin _$Exposure {
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;

  /// Serializes this Exposure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Exposure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExposureCopyWith<Exposure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExposureCopyWith<$Res> {
  factory $ExposureCopyWith(Exposure value, $Res Function(Exposure) then) =
      _$ExposureCopyWithImpl<$Res, Exposure>;
  @useResult
  $Res call(
      {@JsonKey(name: "value") String? value,
      @JsonKey(name: "label") String? label});
}

/// @nodoc
class _$ExposureCopyWithImpl<$Res, $Val extends Exposure>
    implements $ExposureCopyWith<$Res> {
  _$ExposureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Exposure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExposureImplCopyWith<$Res>
    implements $ExposureCopyWith<$Res> {
  factory _$$ExposureImplCopyWith(
          _$ExposureImpl value, $Res Function(_$ExposureImpl) then) =
      __$$ExposureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "value") String? value,
      @JsonKey(name: "label") String? label});
}

/// @nodoc
class __$$ExposureImplCopyWithImpl<$Res>
    extends _$ExposureCopyWithImpl<$Res, _$ExposureImpl>
    implements _$$ExposureImplCopyWith<$Res> {
  __$$ExposureImplCopyWithImpl(
      _$ExposureImpl _value, $Res Function(_$ExposureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Exposure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? label = freezed,
  }) {
    return _then(_$ExposureImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExposureImpl implements _Exposure {
  const _$ExposureImpl(
      {@JsonKey(name: "value") this.value, @JsonKey(name: "label") this.label});

  factory _$ExposureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExposureImplFromJson(json);

  @override
  @JsonKey(name: "value")
  final String? value;
  @override
  @JsonKey(name: "label")
  final String? label;

  @override
  String toString() {
    return 'Exposure(value: $value, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExposureImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label);

  /// Create a copy of Exposure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExposureImplCopyWith<_$ExposureImpl> get copyWith =>
      __$$ExposureImplCopyWithImpl<_$ExposureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExposureImplToJson(
      this,
    );
  }
}

abstract class _Exposure implements Exposure {
  const factory _Exposure(
      {@JsonKey(name: "value") final String? value,
      @JsonKey(name: "label") final String? label}) = _$ExposureImpl;

  factory _Exposure.fromJson(Map<String, dynamic> json) =
      _$ExposureImpl.fromJson;

  @override
  @JsonKey(name: "value")
  String? get value;
  @override
  @JsonKey(name: "label")
  String? get label;

  /// Create a copy of Exposure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExposureImplCopyWith<_$ExposureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GrowthTips _$GrowthTipsFromJson(Map<String, dynamic> json) {
  return _GrowthTips.fromJson(json);
}

/// @nodoc
mixin _$GrowthTips {
  @JsonKey(name: "propagation")
  List<String>? get propagation => throw _privateConstructorUsedError;
  @JsonKey(name: "suggested_panting_places")
  List<String>? get suggestedPantingPlaces =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "pruning")
  List<dynamic>? get pruning => throw _privateConstructorUsedError;

  /// Serializes this GrowthTips to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrowthTips
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrowthTipsCopyWith<GrowthTips> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthTipsCopyWith<$Res> {
  factory $GrowthTipsCopyWith(
          GrowthTips value, $Res Function(GrowthTips) then) =
      _$GrowthTipsCopyWithImpl<$Res, GrowthTips>;
  @useResult
  $Res call(
      {@JsonKey(name: "propagation") List<String>? propagation,
      @JsonKey(name: "suggested_panting_places")
      List<String>? suggestedPantingPlaces,
      @JsonKey(name: "pruning") List<dynamic>? pruning});
}

/// @nodoc
class _$GrowthTipsCopyWithImpl<$Res, $Val extends GrowthTips>
    implements $GrowthTipsCopyWith<$Res> {
  _$GrowthTipsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrowthTips
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propagation = freezed,
    Object? suggestedPantingPlaces = freezed,
    Object? pruning = freezed,
  }) {
    return _then(_value.copyWith(
      propagation: freezed == propagation
          ? _value.propagation
          : propagation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      suggestedPantingPlaces: freezed == suggestedPantingPlaces
          ? _value.suggestedPantingPlaces
          : suggestedPantingPlaces // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pruning: freezed == pruning
          ? _value.pruning
          : pruning // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GrowthTipsImplCopyWith<$Res>
    implements $GrowthTipsCopyWith<$Res> {
  factory _$$GrowthTipsImplCopyWith(
          _$GrowthTipsImpl value, $Res Function(_$GrowthTipsImpl) then) =
      __$$GrowthTipsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "propagation") List<String>? propagation,
      @JsonKey(name: "suggested_panting_places")
      List<String>? suggestedPantingPlaces,
      @JsonKey(name: "pruning") List<dynamic>? pruning});
}

/// @nodoc
class __$$GrowthTipsImplCopyWithImpl<$Res>
    extends _$GrowthTipsCopyWithImpl<$Res, _$GrowthTipsImpl>
    implements _$$GrowthTipsImplCopyWith<$Res> {
  __$$GrowthTipsImplCopyWithImpl(
      _$GrowthTipsImpl _value, $Res Function(_$GrowthTipsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GrowthTips
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propagation = freezed,
    Object? suggestedPantingPlaces = freezed,
    Object? pruning = freezed,
  }) {
    return _then(_$GrowthTipsImpl(
      propagation: freezed == propagation
          ? _value._propagation
          : propagation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      suggestedPantingPlaces: freezed == suggestedPantingPlaces
          ? _value._suggestedPantingPlaces
          : suggestedPantingPlaces // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pruning: freezed == pruning
          ? _value._pruning
          : pruning // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthTipsImpl implements _GrowthTips {
  const _$GrowthTipsImpl(
      {@JsonKey(name: "propagation") final List<String>? propagation,
      @JsonKey(name: "suggested_panting_places")
      final List<String>? suggestedPantingPlaces,
      @JsonKey(name: "pruning") final List<dynamic>? pruning})
      : _propagation = propagation,
        _suggestedPantingPlaces = suggestedPantingPlaces,
        _pruning = pruning;

  factory _$GrowthTipsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthTipsImplFromJson(json);

  final List<String>? _propagation;
  @override
  @JsonKey(name: "propagation")
  List<String>? get propagation {
    final value = _propagation;
    if (value == null) return null;
    if (_propagation is EqualUnmodifiableListView) return _propagation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _suggestedPantingPlaces;
  @override
  @JsonKey(name: "suggested_panting_places")
  List<String>? get suggestedPantingPlaces {
    final value = _suggestedPantingPlaces;
    if (value == null) return null;
    if (_suggestedPantingPlaces is EqualUnmodifiableListView)
      return _suggestedPantingPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _pruning;
  @override
  @JsonKey(name: "pruning")
  List<dynamic>? get pruning {
    final value = _pruning;
    if (value == null) return null;
    if (_pruning is EqualUnmodifiableListView) return _pruning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GrowthTips(propagation: $propagation, suggestedPantingPlaces: $suggestedPantingPlaces, pruning: $pruning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthTipsImpl &&
            const DeepCollectionEquality()
                .equals(other._propagation, _propagation) &&
            const DeepCollectionEquality().equals(
                other._suggestedPantingPlaces, _suggestedPantingPlaces) &&
            const DeepCollectionEquality().equals(other._pruning, _pruning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_propagation),
      const DeepCollectionEquality().hash(_suggestedPantingPlaces),
      const DeepCollectionEquality().hash(_pruning));

  /// Create a copy of GrowthTips
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthTipsImplCopyWith<_$GrowthTipsImpl> get copyWith =>
      __$$GrowthTipsImplCopyWithImpl<_$GrowthTipsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthTipsImplToJson(
      this,
    );
  }
}

abstract class _GrowthTips implements GrowthTips {
  const factory _GrowthTips(
          {@JsonKey(name: "propagation") final List<String>? propagation,
          @JsonKey(name: "suggested_panting_places")
          final List<String>? suggestedPantingPlaces,
          @JsonKey(name: "pruning") final List<dynamic>? pruning}) =
      _$GrowthTipsImpl;

  factory _GrowthTips.fromJson(Map<String, dynamic> json) =
      _$GrowthTipsImpl.fromJson;

  @override
  @JsonKey(name: "propagation")
  List<String>? get propagation;
  @override
  @JsonKey(name: "suggested_panting_places")
  List<String>? get suggestedPantingPlaces;
  @override
  @JsonKey(name: "pruning")
  List<dynamic>? get pruning;

  /// Create a copy of GrowthTips
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrowthTipsImplCopyWith<_$GrowthTipsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeightCm _$HeightCmFromJson(Map<String, dynamic> json) {
  return _HeightCm.fromJson(json);
}

/// @nodoc
mixin _$HeightCm {
  @JsonKey(name: "from_value")
  int? get fromValue => throw _privateConstructorUsedError;
  @JsonKey(name: "to_value")
  int? get toValue => throw _privateConstructorUsedError;

  /// Serializes this HeightCm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeightCm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeightCmCopyWith<HeightCm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeightCmCopyWith<$Res> {
  factory $HeightCmCopyWith(HeightCm value, $Res Function(HeightCm) then) =
      _$HeightCmCopyWithImpl<$Res, HeightCm>;
  @useResult
  $Res call(
      {@JsonKey(name: "from_value") int? fromValue,
      @JsonKey(name: "to_value") int? toValue});
}

/// @nodoc
class _$HeightCmCopyWithImpl<$Res, $Val extends HeightCm>
    implements $HeightCmCopyWith<$Res> {
  _$HeightCmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeightCm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromValue = freezed,
    Object? toValue = freezed,
  }) {
    return _then(_value.copyWith(
      fromValue: freezed == fromValue
          ? _value.fromValue
          : fromValue // ignore: cast_nullable_to_non_nullable
              as int?,
      toValue: freezed == toValue
          ? _value.toValue
          : toValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeightCmImplCopyWith<$Res>
    implements $HeightCmCopyWith<$Res> {
  factory _$$HeightCmImplCopyWith(
          _$HeightCmImpl value, $Res Function(_$HeightCmImpl) then) =
      __$$HeightCmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "from_value") int? fromValue,
      @JsonKey(name: "to_value") int? toValue});
}

/// @nodoc
class __$$HeightCmImplCopyWithImpl<$Res>
    extends _$HeightCmCopyWithImpl<$Res, _$HeightCmImpl>
    implements _$$HeightCmImplCopyWith<$Res> {
  __$$HeightCmImplCopyWithImpl(
      _$HeightCmImpl _value, $Res Function(_$HeightCmImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeightCm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromValue = freezed,
    Object? toValue = freezed,
  }) {
    return _then(_$HeightCmImpl(
      fromValue: freezed == fromValue
          ? _value.fromValue
          : fromValue // ignore: cast_nullable_to_non_nullable
              as int?,
      toValue: freezed == toValue
          ? _value.toValue
          : toValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeightCmImpl implements _HeightCm {
  const _$HeightCmImpl(
      {@JsonKey(name: "from_value") this.fromValue,
      @JsonKey(name: "to_value") this.toValue});

  factory _$HeightCmImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeightCmImplFromJson(json);

  @override
  @JsonKey(name: "from_value")
  final int? fromValue;
  @override
  @JsonKey(name: "to_value")
  final int? toValue;

  @override
  String toString() {
    return 'HeightCm(fromValue: $fromValue, toValue: $toValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeightCmImpl &&
            (identical(other.fromValue, fromValue) ||
                other.fromValue == fromValue) &&
            (identical(other.toValue, toValue) || other.toValue == toValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fromValue, toValue);

  /// Create a copy of HeightCm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeightCmImplCopyWith<_$HeightCmImpl> get copyWith =>
      __$$HeightCmImplCopyWithImpl<_$HeightCmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeightCmImplToJson(
      this,
    );
  }
}

abstract class _HeightCm implements HeightCm {
  const factory _HeightCm(
      {@JsonKey(name: "from_value") final int? fromValue,
      @JsonKey(name: "to_value") final int? toValue}) = _$HeightCmImpl;

  factory _HeightCm.fromJson(Map<String, dynamic> json) =
      _$HeightCmImpl.fromJson;

  @override
  @JsonKey(name: "from_value")
  int? get fromValue;
  @override
  @JsonKey(name: "to_value")
  int? get toValue;

  /// Create a copy of HeightCm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeightCmImplCopyWith<_$HeightCmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  @JsonKey(name: "bark")
  List<ImagesBark>? get bark => throw _privateConstructorUsedError;
  @JsonKey(name: "fruit")
  List<ImagesBark>? get fruit => throw _privateConstructorUsedError;
  @JsonKey(name: "flower")
  List<ImagesBark>? get flower => throw _privateConstructorUsedError;
  @JsonKey(name: "habit")
  List<ImagesBark>? get habit => throw _privateConstructorUsedError;
  @JsonKey(name: "leaf")
  List<ImagesBark>? get leaf => throw _privateConstructorUsedError;
  @JsonKey(name: "other")
  List<ImagesBark>? get other => throw _privateConstructorUsedError;
  @JsonKey(name: "root")
  List<ImagesBark>? get root => throw _privateConstructorUsedError;
  @JsonKey(name: "stem")
  List<ImagesBark>? get stem => throw _privateConstructorUsedError;
  @JsonKey(name: "seed")
  List<ImagesBark>? get seed => throw _privateConstructorUsedError;
  @JsonKey(name: "tuber")
  List<ImagesBark>? get tuber => throw _privateConstructorUsedError;
  @JsonKey(name: "foliage")
  List<ImagesBark>? get foliage => throw _privateConstructorUsedError;

  /// Serializes this Images to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res, Images>;
  @useResult
  $Res call(
      {@JsonKey(name: "bark") List<ImagesBark>? bark,
      @JsonKey(name: "fruit") List<ImagesBark>? fruit,
      @JsonKey(name: "flower") List<ImagesBark>? flower,
      @JsonKey(name: "habit") List<ImagesBark>? habit,
      @JsonKey(name: "leaf") List<ImagesBark>? leaf,
      @JsonKey(name: "other") List<ImagesBark>? other,
      @JsonKey(name: "root") List<ImagesBark>? root,
      @JsonKey(name: "stem") List<ImagesBark>? stem,
      @JsonKey(name: "seed") List<ImagesBark>? seed,
      @JsonKey(name: "tuber") List<ImagesBark>? tuber,
      @JsonKey(name: "foliage") List<ImagesBark>? foliage});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res, $Val extends Images>
    implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bark = freezed,
    Object? fruit = freezed,
    Object? flower = freezed,
    Object? habit = freezed,
    Object? leaf = freezed,
    Object? other = freezed,
    Object? root = freezed,
    Object? stem = freezed,
    Object? seed = freezed,
    Object? tuber = freezed,
    Object? foliage = freezed,
  }) {
    return _then(_value.copyWith(
      bark: freezed == bark
          ? _value.bark
          : bark // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      fruit: freezed == fruit
          ? _value.fruit
          : fruit // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      flower: freezed == flower
          ? _value.flower
          : flower // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      habit: freezed == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      leaf: freezed == leaf
          ? _value.leaf
          : leaf // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      root: freezed == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      stem: freezed == stem
          ? _value.stem
          : stem // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      seed: freezed == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      tuber: freezed == tuber
          ? _value.tuber
          : tuber // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      foliage: freezed == foliage
          ? _value.foliage
          : foliage // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesImplCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(
          _$ImagesImpl value, $Res Function(_$ImagesImpl) then) =
      __$$ImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bark") List<ImagesBark>? bark,
      @JsonKey(name: "fruit") List<ImagesBark>? fruit,
      @JsonKey(name: "flower") List<ImagesBark>? flower,
      @JsonKey(name: "habit") List<ImagesBark>? habit,
      @JsonKey(name: "leaf") List<ImagesBark>? leaf,
      @JsonKey(name: "other") List<ImagesBark>? other,
      @JsonKey(name: "root") List<ImagesBark>? root,
      @JsonKey(name: "stem") List<ImagesBark>? stem,
      @JsonKey(name: "seed") List<ImagesBark>? seed,
      @JsonKey(name: "tuber") List<ImagesBark>? tuber,
      @JsonKey(name: "foliage") List<ImagesBark>? foliage});
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res>
    extends _$ImagesCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(
      _$ImagesImpl _value, $Res Function(_$ImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bark = freezed,
    Object? fruit = freezed,
    Object? flower = freezed,
    Object? habit = freezed,
    Object? leaf = freezed,
    Object? other = freezed,
    Object? root = freezed,
    Object? stem = freezed,
    Object? seed = freezed,
    Object? tuber = freezed,
    Object? foliage = freezed,
  }) {
    return _then(_$ImagesImpl(
      bark: freezed == bark
          ? _value._bark
          : bark // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      fruit: freezed == fruit
          ? _value._fruit
          : fruit // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      flower: freezed == flower
          ? _value._flower
          : flower // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      habit: freezed == habit
          ? _value._habit
          : habit // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      leaf: freezed == leaf
          ? _value._leaf
          : leaf // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      other: freezed == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      root: freezed == root
          ? _value._root
          : root // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      stem: freezed == stem
          ? _value._stem
          : stem // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      seed: freezed == seed
          ? _value._seed
          : seed // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      tuber: freezed == tuber
          ? _value._tuber
          : tuber // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
      foliage: freezed == foliage
          ? _value._foliage
          : foliage // ignore: cast_nullable_to_non_nullable
              as List<ImagesBark>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesImpl implements _Images {
  const _$ImagesImpl(
      {@JsonKey(name: "bark") final List<ImagesBark>? bark,
      @JsonKey(name: "fruit") final List<ImagesBark>? fruit,
      @JsonKey(name: "flower") final List<ImagesBark>? flower,
      @JsonKey(name: "habit") final List<ImagesBark>? habit,
      @JsonKey(name: "leaf") final List<ImagesBark>? leaf,
      @JsonKey(name: "other") final List<ImagesBark>? other,
      @JsonKey(name: "root") final List<ImagesBark>? root,
      @JsonKey(name: "stem") final List<ImagesBark>? stem,
      @JsonKey(name: "seed") final List<ImagesBark>? seed,
      @JsonKey(name: "tuber") final List<ImagesBark>? tuber,
      @JsonKey(name: "foliage") final List<ImagesBark>? foliage})
      : _bark = bark,
        _fruit = fruit,
        _flower = flower,
        _habit = habit,
        _leaf = leaf,
        _other = other,
        _root = root,
        _stem = stem,
        _seed = seed,
        _tuber = tuber,
        _foliage = foliage;

  factory _$ImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesImplFromJson(json);

  final List<ImagesBark>? _bark;
  @override
  @JsonKey(name: "bark")
  List<ImagesBark>? get bark {
    final value = _bark;
    if (value == null) return null;
    if (_bark is EqualUnmodifiableListView) return _bark;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesBark>? _fruit;
  @override
  @JsonKey(name: "fruit")
  List<ImagesBark>? get fruit {
    final value = _fruit;
    if (value == null) return null;
    if (_fruit is EqualUnmodifiableListView) return _fruit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesBark>? _flower;
  @override
  @JsonKey(name: "flower")
  List<ImagesBark>? get flower {
    final value = _flower;
    if (value == null) return null;
    if (_flower is EqualUnmodifiableListView) return _flower;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesBark>? _habit;
  @override
  @JsonKey(name: "habit")
  List<ImagesBark>? get habit {
    final value = _habit;
    if (value == null) return null;
    if (_habit is EqualUnmodifiableListView) return _habit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesBark>? _leaf;
  @override
  @JsonKey(name: "leaf")
  List<ImagesBark>? get leaf {
    final value = _leaf;
    if (value == null) return null;
    if (_leaf is EqualUnmodifiableListView) return _leaf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesBark>? _other;
  @override
  @JsonKey(name: "other")
  List<ImagesBark>? get other {
    final value = _other;
    if (value == null) return null;
    if (_other is EqualUnmodifiableListView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesBark>? _root;
  @override
  @JsonKey(name: "root")
  List<ImagesBark>? get root {
    final value = _root;
    if (value == null) return null;
    if (_root is EqualUnmodifiableListView) return _root;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesBark>? _stem;
  @override
  @JsonKey(name: "stem")
  List<ImagesBark>? get stem {
    final value = _stem;
    if (value == null) return null;
    if (_stem is EqualUnmodifiableListView) return _stem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesBark>? _seed;
  @override
  @JsonKey(name: "seed")
  List<ImagesBark>? get seed {
    final value = _seed;
    if (value == null) return null;
    if (_seed is EqualUnmodifiableListView) return _seed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesBark>? _tuber;
  @override
  @JsonKey(name: "tuber")
  List<ImagesBark>? get tuber {
    final value = _tuber;
    if (value == null) return null;
    if (_tuber is EqualUnmodifiableListView) return _tuber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesBark>? _foliage;
  @override
  @JsonKey(name: "foliage")
  List<ImagesBark>? get foliage {
    final value = _foliage;
    if (value == null) return null;
    if (_foliage is EqualUnmodifiableListView) return _foliage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Images(bark: $bark, fruit: $fruit, flower: $flower, habit: $habit, leaf: $leaf, other: $other, root: $root, stem: $stem, seed: $seed, tuber: $tuber, foliage: $foliage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
            const DeepCollectionEquality().equals(other._bark, _bark) &&
            const DeepCollectionEquality().equals(other._fruit, _fruit) &&
            const DeepCollectionEquality().equals(other._flower, _flower) &&
            const DeepCollectionEquality().equals(other._habit, _habit) &&
            const DeepCollectionEquality().equals(other._leaf, _leaf) &&
            const DeepCollectionEquality().equals(other._other, this._other) &&
            const DeepCollectionEquality().equals(other._root, _root) &&
            const DeepCollectionEquality().equals(other._stem, _stem) &&
            const DeepCollectionEquality().equals(other._seed, _seed) &&
            const DeepCollectionEquality().equals(other._tuber, _tuber) &&
            const DeepCollectionEquality().equals(other._foliage, _foliage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bark),
      const DeepCollectionEquality().hash(_fruit),
      const DeepCollectionEquality().hash(_flower),
      const DeepCollectionEquality().hash(_habit),
      const DeepCollectionEquality().hash(_leaf),
      const DeepCollectionEquality().hash(_other),
      const DeepCollectionEquality().hash(_root),
      const DeepCollectionEquality().hash(_stem),
      const DeepCollectionEquality().hash(_seed),
      const DeepCollectionEquality().hash(_tuber),
      const DeepCollectionEquality().hash(_foliage));

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesImplToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  const factory _Images(
          {@JsonKey(name: "bark") final List<ImagesBark>? bark,
          @JsonKey(name: "fruit") final List<ImagesBark>? fruit,
          @JsonKey(name: "flower") final List<ImagesBark>? flower,
          @JsonKey(name: "habit") final List<ImagesBark>? habit,
          @JsonKey(name: "leaf") final List<ImagesBark>? leaf,
          @JsonKey(name: "other") final List<ImagesBark>? other,
          @JsonKey(name: "root") final List<ImagesBark>? root,
          @JsonKey(name: "stem") final List<ImagesBark>? stem,
          @JsonKey(name: "seed") final List<ImagesBark>? seed,
          @JsonKey(name: "tuber") final List<ImagesBark>? tuber,
          @JsonKey(name: "foliage") final List<ImagesBark>? foliage}) =
      _$ImagesImpl;

  factory _Images.fromJson(Map<String, dynamic> json) = _$ImagesImpl.fromJson;

  @override
  @JsonKey(name: "bark")
  List<ImagesBark>? get bark;
  @override
  @JsonKey(name: "fruit")
  List<ImagesBark>? get fruit;
  @override
  @JsonKey(name: "flower")
  List<ImagesBark>? get flower;
  @override
  @JsonKey(name: "habit")
  List<ImagesBark>? get habit;
  @override
  @JsonKey(name: "leaf")
  List<ImagesBark>? get leaf;
  @override
  @JsonKey(name: "other")
  List<ImagesBark>? get other;
  @override
  @JsonKey(name: "root")
  List<ImagesBark>? get root;
  @override
  @JsonKey(name: "stem")
  List<ImagesBark>? get stem;
  @override
  @JsonKey(name: "seed")
  List<ImagesBark>? get seed;
  @override
  @JsonKey(name: "tuber")
  List<ImagesBark>? get tuber;
  @override
  @JsonKey(name: "foliage")
  List<ImagesBark>? get foliage;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagesBark _$ImagesBarkFromJson(Map<String, dynamic> json) {
  return _ImagesBark.fromJson(json);
}

/// @nodoc
mixin _$ImagesBark {
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "image_copyright")
  String? get imageCopyright => throw _privateConstructorUsedError;

  /// Serializes this ImagesBark to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImagesBark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesBarkCopyWith<ImagesBark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesBarkCopyWith<$Res> {
  factory $ImagesBarkCopyWith(
          ImagesBark value, $Res Function(ImagesBark) then) =
      _$ImagesBarkCopyWithImpl<$Res, ImagesBark>;
  @useResult
  $Res call(
      {@JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "image_copyright") String? imageCopyright});
}

/// @nodoc
class _$ImagesBarkCopyWithImpl<$Res, $Val extends ImagesBark>
    implements $ImagesBarkCopyWith<$Res> {
  _$ImagesBarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagesBark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? imageCopyright = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageCopyright: freezed == imageCopyright
          ? _value.imageCopyright
          : imageCopyright // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesBarkImplCopyWith<$Res>
    implements $ImagesBarkCopyWith<$Res> {
  factory _$$ImagesBarkImplCopyWith(
          _$ImagesBarkImpl value, $Res Function(_$ImagesBarkImpl) then) =
      __$$ImagesBarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "image_copyright") String? imageCopyright});
}

/// @nodoc
class __$$ImagesBarkImplCopyWithImpl<$Res>
    extends _$ImagesBarkCopyWithImpl<$Res, _$ImagesBarkImpl>
    implements _$$ImagesBarkImplCopyWith<$Res> {
  __$$ImagesBarkImplCopyWithImpl(
      _$ImagesBarkImpl _value, $Res Function(_$ImagesBarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesBark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? imageCopyright = freezed,
  }) {
    return _then(_$ImagesBarkImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageCopyright: freezed == imageCopyright
          ? _value.imageCopyright
          : imageCopyright // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesBarkImpl implements _ImagesBark {
  const _$ImagesBarkImpl(
      {@JsonKey(name: "image_url") this.imageUrl,
      @JsonKey(name: "image_copyright") this.imageCopyright});

  factory _$ImagesBarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesBarkImplFromJson(json);

  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  @JsonKey(name: "image_copyright")
  final String? imageCopyright;

  @override
  String toString() {
    return 'ImagesBark(imageUrl: $imageUrl, imageCopyright: $imageCopyright)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesBarkImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageCopyright, imageCopyright) ||
                other.imageCopyright == imageCopyright));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, imageCopyright);

  /// Create a copy of ImagesBark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesBarkImplCopyWith<_$ImagesBarkImpl> get copyWith =>
      __$$ImagesBarkImplCopyWithImpl<_$ImagesBarkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesBarkImplToJson(
      this,
    );
  }
}

abstract class _ImagesBark implements ImagesBark {
  const factory _ImagesBark(
          {@JsonKey(name: "image_url") final String? imageUrl,
          @JsonKey(name: "image_copyright") final String? imageCopyright}) =
      _$ImagesBarkImpl;

  factory _ImagesBark.fromJson(Map<String, dynamic> json) =
      _$ImagesBarkImpl.fromJson;

  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(name: "image_copyright")
  String? get imageCopyright;

  /// Create a copy of ImagesBark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesBarkImplCopyWith<_$ImagesBarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Misc _$MiscFromJson(Map<String, dynamic> json) {
  return _Misc.fromJson(json);
}

/// @nodoc
mixin _$Misc {
  @JsonKey(name: "rank")
  String? get rank => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "year")
  int? get year => throw _privateConstructorUsedError;
  @JsonKey(name: "genus")
  String? get genus => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "family")
  String? get family => throw _privateConstructorUsedError;
  @JsonKey(name: "flower")
  Flower? get flower => throw _privateConstructorUsedError;
  @JsonKey(name: "growth")
  Growth? get growth => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "foliage")
  Foliage? get foliage => throw _privateConstructorUsedError;
  @JsonKey(name: "vegetable")
  dynamic get vegetable => throw _privateConstructorUsedError;
  @JsonKey(name: "common_name")
  String? get commonName => throw _privateConstructorUsedError;
  @JsonKey(name: "bibliography")
  String? get bibliography => throw _privateConstructorUsedError;
  @JsonKey(name: "observations")
  String? get observations => throw _privateConstructorUsedError;
  @JsonKey(name: "fruit_or_seed")
  FruitOrSeed? get fruitOrSeed => throw _privateConstructorUsedError;
  @JsonKey(name: "specifications")
  Specifications? get specifications => throw _privateConstructorUsedError;
  @JsonKey(name: "scientific_name")
  String? get scientificName => throw _privateConstructorUsedError;
  @JsonKey(name: "family_common_name")
  dynamic get familyCommonName => throw _privateConstructorUsedError;

  /// Serializes this Misc to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Misc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiscCopyWith<Misc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiscCopyWith<$Res> {
  factory $MiscCopyWith(Misc value, $Res Function(Misc) then) =
      _$MiscCopyWithImpl<$Res, Misc>;
  @useResult
  $Res call(
      {@JsonKey(name: "rank") String? rank,
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
      @JsonKey(name: "family_common_name") dynamic familyCommonName});

  $FlowerCopyWith<$Res>? get flower;
  $GrowthCopyWith<$Res>? get growth;
  $FoliageCopyWith<$Res>? get foliage;
  $FruitOrSeedCopyWith<$Res>? get fruitOrSeed;
  $SpecificationsCopyWith<$Res>? get specifications;
}

/// @nodoc
class _$MiscCopyWithImpl<$Res, $Val extends Misc>
    implements $MiscCopyWith<$Res> {
  _$MiscCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Misc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = freezed,
    Object? slug = freezed,
    Object? year = freezed,
    Object? genus = freezed,
    Object? author = freezed,
    Object? family = freezed,
    Object? flower = freezed,
    Object? growth = freezed,
    Object? status = freezed,
    Object? foliage = freezed,
    Object? vegetable = freezed,
    Object? commonName = freezed,
    Object? bibliography = freezed,
    Object? observations = freezed,
    Object? fruitOrSeed = freezed,
    Object? specifications = freezed,
    Object? scientificName = freezed,
    Object? familyCommonName = freezed,
  }) {
    return _then(_value.copyWith(
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genus: freezed == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String?,
      flower: freezed == flower
          ? _value.flower
          : flower // ignore: cast_nullable_to_non_nullable
              as Flower?,
      growth: freezed == growth
          ? _value.growth
          : growth // ignore: cast_nullable_to_non_nullable
              as Growth?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      foliage: freezed == foliage
          ? _value.foliage
          : foliage // ignore: cast_nullable_to_non_nullable
              as Foliage?,
      vegetable: freezed == vegetable
          ? _value.vegetable
          : vegetable // ignore: cast_nullable_to_non_nullable
              as dynamic,
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String?,
      bibliography: freezed == bibliography
          ? _value.bibliography
          : bibliography // ignore: cast_nullable_to_non_nullable
              as String?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
      fruitOrSeed: freezed == fruitOrSeed
          ? _value.fruitOrSeed
          : fruitOrSeed // ignore: cast_nullable_to_non_nullable
              as FruitOrSeed?,
      specifications: freezed == specifications
          ? _value.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Specifications?,
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyCommonName: freezed == familyCommonName
          ? _value.familyCommonName
          : familyCommonName // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of Misc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlowerCopyWith<$Res>? get flower {
    if (_value.flower == null) {
      return null;
    }

    return $FlowerCopyWith<$Res>(_value.flower!, (value) {
      return _then(_value.copyWith(flower: value) as $Val);
    });
  }

  /// Create a copy of Misc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GrowthCopyWith<$Res>? get growth {
    if (_value.growth == null) {
      return null;
    }

    return $GrowthCopyWith<$Res>(_value.growth!, (value) {
      return _then(_value.copyWith(growth: value) as $Val);
    });
  }

  /// Create a copy of Misc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoliageCopyWith<$Res>? get foliage {
    if (_value.foliage == null) {
      return null;
    }

    return $FoliageCopyWith<$Res>(_value.foliage!, (value) {
      return _then(_value.copyWith(foliage: value) as $Val);
    });
  }

  /// Create a copy of Misc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FruitOrSeedCopyWith<$Res>? get fruitOrSeed {
    if (_value.fruitOrSeed == null) {
      return null;
    }

    return $FruitOrSeedCopyWith<$Res>(_value.fruitOrSeed!, (value) {
      return _then(_value.copyWith(fruitOrSeed: value) as $Val);
    });
  }

  /// Create a copy of Misc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpecificationsCopyWith<$Res>? get specifications {
    if (_value.specifications == null) {
      return null;
    }

    return $SpecificationsCopyWith<$Res>(_value.specifications!, (value) {
      return _then(_value.copyWith(specifications: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiscImplCopyWith<$Res> implements $MiscCopyWith<$Res> {
  factory _$$MiscImplCopyWith(
          _$MiscImpl value, $Res Function(_$MiscImpl) then) =
      __$$MiscImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rank") String? rank,
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
      @JsonKey(name: "family_common_name") dynamic familyCommonName});

  @override
  $FlowerCopyWith<$Res>? get flower;
  @override
  $GrowthCopyWith<$Res>? get growth;
  @override
  $FoliageCopyWith<$Res>? get foliage;
  @override
  $FruitOrSeedCopyWith<$Res>? get fruitOrSeed;
  @override
  $SpecificationsCopyWith<$Res>? get specifications;
}

/// @nodoc
class __$$MiscImplCopyWithImpl<$Res>
    extends _$MiscCopyWithImpl<$Res, _$MiscImpl>
    implements _$$MiscImplCopyWith<$Res> {
  __$$MiscImplCopyWithImpl(_$MiscImpl _value, $Res Function(_$MiscImpl) _then)
      : super(_value, _then);

  /// Create a copy of Misc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = freezed,
    Object? slug = freezed,
    Object? year = freezed,
    Object? genus = freezed,
    Object? author = freezed,
    Object? family = freezed,
    Object? flower = freezed,
    Object? growth = freezed,
    Object? status = freezed,
    Object? foliage = freezed,
    Object? vegetable = freezed,
    Object? commonName = freezed,
    Object? bibliography = freezed,
    Object? observations = freezed,
    Object? fruitOrSeed = freezed,
    Object? specifications = freezed,
    Object? scientificName = freezed,
    Object? familyCommonName = freezed,
  }) {
    return _then(_$MiscImpl(
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genus: freezed == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String?,
      flower: freezed == flower
          ? _value.flower
          : flower // ignore: cast_nullable_to_non_nullable
              as Flower?,
      growth: freezed == growth
          ? _value.growth
          : growth // ignore: cast_nullable_to_non_nullable
              as Growth?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      foliage: freezed == foliage
          ? _value.foliage
          : foliage // ignore: cast_nullable_to_non_nullable
              as Foliage?,
      vegetable: freezed == vegetable
          ? _value.vegetable
          : vegetable // ignore: cast_nullable_to_non_nullable
              as dynamic,
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String?,
      bibliography: freezed == bibliography
          ? _value.bibliography
          : bibliography // ignore: cast_nullable_to_non_nullable
              as String?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
      fruitOrSeed: freezed == fruitOrSeed
          ? _value.fruitOrSeed
          : fruitOrSeed // ignore: cast_nullable_to_non_nullable
              as FruitOrSeed?,
      specifications: freezed == specifications
          ? _value.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Specifications?,
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyCommonName: freezed == familyCommonName
          ? _value.familyCommonName
          : familyCommonName // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiscImpl implements _Misc {
  const _$MiscImpl(
      {@JsonKey(name: "rank") this.rank,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "year") this.year,
      @JsonKey(name: "genus") this.genus,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "family") this.family,
      @JsonKey(name: "flower") this.flower,
      @JsonKey(name: "growth") this.growth,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "foliage") this.foliage,
      @JsonKey(name: "vegetable") this.vegetable,
      @JsonKey(name: "common_name") this.commonName,
      @JsonKey(name: "bibliography") this.bibliography,
      @JsonKey(name: "observations") this.observations,
      @JsonKey(name: "fruit_or_seed") this.fruitOrSeed,
      @JsonKey(name: "specifications") this.specifications,
      @JsonKey(name: "scientific_name") this.scientificName,
      @JsonKey(name: "family_common_name") this.familyCommonName});

  factory _$MiscImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiscImplFromJson(json);

  @override
  @JsonKey(name: "rank")
  final String? rank;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "year")
  final int? year;
  @override
  @JsonKey(name: "genus")
  final String? genus;
  @override
  @JsonKey(name: "author")
  final String? author;
  @override
  @JsonKey(name: "family")
  final String? family;
  @override
  @JsonKey(name: "flower")
  final Flower? flower;
  @override
  @JsonKey(name: "growth")
  final Growth? growth;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "foliage")
  final Foliage? foliage;
  @override
  @JsonKey(name: "vegetable")
  final dynamic vegetable;
  @override
  @JsonKey(name: "common_name")
  final String? commonName;
  @override
  @JsonKey(name: "bibliography")
  final String? bibliography;
  @override
  @JsonKey(name: "observations")
  final String? observations;
  @override
  @JsonKey(name: "fruit_or_seed")
  final FruitOrSeed? fruitOrSeed;
  @override
  @JsonKey(name: "specifications")
  final Specifications? specifications;
  @override
  @JsonKey(name: "scientific_name")
  final String? scientificName;
  @override
  @JsonKey(name: "family_common_name")
  final dynamic familyCommonName;

  @override
  String toString() {
    return 'Misc(rank: $rank, slug: $slug, year: $year, genus: $genus, author: $author, family: $family, flower: $flower, growth: $growth, status: $status, foliage: $foliage, vegetable: $vegetable, commonName: $commonName, bibliography: $bibliography, observations: $observations, fruitOrSeed: $fruitOrSeed, specifications: $specifications, scientificName: $scientificName, familyCommonName: $familyCommonName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiscImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.flower, flower) || other.flower == flower) &&
            (identical(other.growth, growth) || other.growth == growth) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.foliage, foliage) || other.foliage == foliage) &&
            const DeepCollectionEquality().equals(other.vegetable, vegetable) &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            (identical(other.bibliography, bibliography) ||
                other.bibliography == bibliography) &&
            (identical(other.observations, observations) ||
                other.observations == observations) &&
            (identical(other.fruitOrSeed, fruitOrSeed) ||
                other.fruitOrSeed == fruitOrSeed) &&
            (identical(other.specifications, specifications) ||
                other.specifications == specifications) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            const DeepCollectionEquality()
                .equals(other.familyCommonName, familyCommonName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rank,
      slug,
      year,
      genus,
      author,
      family,
      flower,
      growth,
      status,
      foliage,
      const DeepCollectionEquality().hash(vegetable),
      commonName,
      bibliography,
      observations,
      fruitOrSeed,
      specifications,
      scientificName,
      const DeepCollectionEquality().hash(familyCommonName));

  /// Create a copy of Misc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiscImplCopyWith<_$MiscImpl> get copyWith =>
      __$$MiscImplCopyWithImpl<_$MiscImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiscImplToJson(
      this,
    );
  }
}

abstract class _Misc implements Misc {
  const factory _Misc(
      {@JsonKey(name: "rank") final String? rank,
      @JsonKey(name: "slug") final String? slug,
      @JsonKey(name: "year") final int? year,
      @JsonKey(name: "genus") final String? genus,
      @JsonKey(name: "author") final String? author,
      @JsonKey(name: "family") final String? family,
      @JsonKey(name: "flower") final Flower? flower,
      @JsonKey(name: "growth") final Growth? growth,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "foliage") final Foliage? foliage,
      @JsonKey(name: "vegetable") final dynamic vegetable,
      @JsonKey(name: "common_name") final String? commonName,
      @JsonKey(name: "bibliography") final String? bibliography,
      @JsonKey(name: "observations") final String? observations,
      @JsonKey(name: "fruit_or_seed") final FruitOrSeed? fruitOrSeed,
      @JsonKey(name: "specifications") final Specifications? specifications,
      @JsonKey(name: "scientific_name") final String? scientificName,
      @JsonKey(name: "family_common_name")
      final dynamic familyCommonName}) = _$MiscImpl;

  factory _Misc.fromJson(Map<String, dynamic> json) = _$MiscImpl.fromJson;

  @override
  @JsonKey(name: "rank")
  String? get rank;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "year")
  int? get year;
  @override
  @JsonKey(name: "genus")
  String? get genus;
  @override
  @JsonKey(name: "author")
  String? get author;
  @override
  @JsonKey(name: "family")
  String? get family;
  @override
  @JsonKey(name: "flower")
  Flower? get flower;
  @override
  @JsonKey(name: "growth")
  Growth? get growth;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "foliage")
  Foliage? get foliage;
  @override
  @JsonKey(name: "vegetable")
  dynamic get vegetable;
  @override
  @JsonKey(name: "common_name")
  String? get commonName;
  @override
  @JsonKey(name: "bibliography")
  String? get bibliography;
  @override
  @JsonKey(name: "observations")
  String? get observations;
  @override
  @JsonKey(name: "fruit_or_seed")
  FruitOrSeed? get fruitOrSeed;
  @override
  @JsonKey(name: "specifications")
  Specifications? get specifications;
  @override
  @JsonKey(name: "scientific_name")
  String? get scientificName;
  @override
  @JsonKey(name: "family_common_name")
  dynamic get familyCommonName;

  /// Create a copy of Misc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiscImplCopyWith<_$MiscImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Flower _$FlowerFromJson(Map<String, dynamic> json) {
  return _Flower.fromJson(json);
}

/// @nodoc
mixin _$Flower {
  @JsonKey(name: "color")
  dynamic get color => throw _privateConstructorUsedError;
  @JsonKey(name: "conspicuous")
  dynamic get conspicuous => throw _privateConstructorUsedError;

  /// Serializes this Flower to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Flower
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlowerCopyWith<Flower> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowerCopyWith<$Res> {
  factory $FlowerCopyWith(Flower value, $Res Function(Flower) then) =
      _$FlowerCopyWithImpl<$Res, Flower>;
  @useResult
  $Res call(
      {@JsonKey(name: "color") dynamic color,
      @JsonKey(name: "conspicuous") dynamic conspicuous});
}

/// @nodoc
class _$FlowerCopyWithImpl<$Res, $Val extends Flower>
    implements $FlowerCopyWith<$Res> {
  _$FlowerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Flower
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? conspicuous = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      conspicuous: freezed == conspicuous
          ? _value.conspicuous
          : conspicuous // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlowerImplCopyWith<$Res> implements $FlowerCopyWith<$Res> {
  factory _$$FlowerImplCopyWith(
          _$FlowerImpl value, $Res Function(_$FlowerImpl) then) =
      __$$FlowerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "color") dynamic color,
      @JsonKey(name: "conspicuous") dynamic conspicuous});
}

/// @nodoc
class __$$FlowerImplCopyWithImpl<$Res>
    extends _$FlowerCopyWithImpl<$Res, _$FlowerImpl>
    implements _$$FlowerImplCopyWith<$Res> {
  __$$FlowerImplCopyWithImpl(
      _$FlowerImpl _value, $Res Function(_$FlowerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Flower
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? conspicuous = freezed,
  }) {
    return _then(_$FlowerImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      conspicuous: freezed == conspicuous
          ? _value.conspicuous
          : conspicuous // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlowerImpl implements _Flower {
  const _$FlowerImpl(
      {@JsonKey(name: "color") this.color,
      @JsonKey(name: "conspicuous") this.conspicuous});

  factory _$FlowerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlowerImplFromJson(json);

  @override
  @JsonKey(name: "color")
  final dynamic color;
  @override
  @JsonKey(name: "conspicuous")
  final dynamic conspicuous;

  @override
  String toString() {
    return 'Flower(color: $color, conspicuous: $conspicuous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowerImpl &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.conspicuous, conspicuous));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(conspicuous));

  /// Create a copy of Flower
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlowerImplCopyWith<_$FlowerImpl> get copyWith =>
      __$$FlowerImplCopyWithImpl<_$FlowerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlowerImplToJson(
      this,
    );
  }
}

abstract class _Flower implements Flower {
  const factory _Flower(
      {@JsonKey(name: "color") final dynamic color,
      @JsonKey(name: "conspicuous") final dynamic conspicuous}) = _$FlowerImpl;

  factory _Flower.fromJson(Map<String, dynamic> json) = _$FlowerImpl.fromJson;

  @override
  @JsonKey(name: "color")
  dynamic get color;
  @override
  @JsonKey(name: "conspicuous")
  dynamic get conspicuous;

  /// Create a copy of Flower
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlowerImplCopyWith<_$FlowerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Foliage _$FoliageFromJson(Map<String, dynamic> json) {
  return _Foliage.fromJson(json);
}

/// @nodoc
mixin _$Foliage {
  @JsonKey(name: "color")
  dynamic get color => throw _privateConstructorUsedError;
  @JsonKey(name: "texture")
  dynamic get texture => throw _privateConstructorUsedError;
  @JsonKey(name: "leaf_retention")
  dynamic get leafRetention => throw _privateConstructorUsedError;

  /// Serializes this Foliage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Foliage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoliageCopyWith<Foliage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoliageCopyWith<$Res> {
  factory $FoliageCopyWith(Foliage value, $Res Function(Foliage) then) =
      _$FoliageCopyWithImpl<$Res, Foliage>;
  @useResult
  $Res call(
      {@JsonKey(name: "color") dynamic color,
      @JsonKey(name: "texture") dynamic texture,
      @JsonKey(name: "leaf_retention") dynamic leafRetention});
}

/// @nodoc
class _$FoliageCopyWithImpl<$Res, $Val extends Foliage>
    implements $FoliageCopyWith<$Res> {
  _$FoliageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Foliage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? texture = freezed,
    Object? leafRetention = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      texture: freezed == texture
          ? _value.texture
          : texture // ignore: cast_nullable_to_non_nullable
              as dynamic,
      leafRetention: freezed == leafRetention
          ? _value.leafRetention
          : leafRetention // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoliageImplCopyWith<$Res> implements $FoliageCopyWith<$Res> {
  factory _$$FoliageImplCopyWith(
          _$FoliageImpl value, $Res Function(_$FoliageImpl) then) =
      __$$FoliageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "color") dynamic color,
      @JsonKey(name: "texture") dynamic texture,
      @JsonKey(name: "leaf_retention") dynamic leafRetention});
}

/// @nodoc
class __$$FoliageImplCopyWithImpl<$Res>
    extends _$FoliageCopyWithImpl<$Res, _$FoliageImpl>
    implements _$$FoliageImplCopyWith<$Res> {
  __$$FoliageImplCopyWithImpl(
      _$FoliageImpl _value, $Res Function(_$FoliageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Foliage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? texture = freezed,
    Object? leafRetention = freezed,
  }) {
    return _then(_$FoliageImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      texture: freezed == texture
          ? _value.texture
          : texture // ignore: cast_nullable_to_non_nullable
              as dynamic,
      leafRetention: freezed == leafRetention
          ? _value.leafRetention
          : leafRetention // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoliageImpl implements _Foliage {
  const _$FoliageImpl(
      {@JsonKey(name: "color") this.color,
      @JsonKey(name: "texture") this.texture,
      @JsonKey(name: "leaf_retention") this.leafRetention});

  factory _$FoliageImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoliageImplFromJson(json);

  @override
  @JsonKey(name: "color")
  final dynamic color;
  @override
  @JsonKey(name: "texture")
  final dynamic texture;
  @override
  @JsonKey(name: "leaf_retention")
  final dynamic leafRetention;

  @override
  String toString() {
    return 'Foliage(color: $color, texture: $texture, leafRetention: $leafRetention)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoliageImpl &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.texture, texture) &&
            const DeepCollectionEquality()
                .equals(other.leafRetention, leafRetention));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(texture),
      const DeepCollectionEquality().hash(leafRetention));

  /// Create a copy of Foliage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoliageImplCopyWith<_$FoliageImpl> get copyWith =>
      __$$FoliageImplCopyWithImpl<_$FoliageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoliageImplToJson(
      this,
    );
  }
}

abstract class _Foliage implements Foliage {
  const factory _Foliage(
          {@JsonKey(name: "color") final dynamic color,
          @JsonKey(name: "texture") final dynamic texture,
          @JsonKey(name: "leaf_retention") final dynamic leafRetention}) =
      _$FoliageImpl;

  factory _Foliage.fromJson(Map<String, dynamic> json) = _$FoliageImpl.fromJson;

  @override
  @JsonKey(name: "color")
  dynamic get color;
  @override
  @JsonKey(name: "texture")
  dynamic get texture;
  @override
  @JsonKey(name: "leaf_retention")
  dynamic get leafRetention;

  /// Create a copy of Foliage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoliageImplCopyWith<_$FoliageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FruitOrSeed _$FruitOrSeedFromJson(Map<String, dynamic> json) {
  return _FruitOrSeed.fromJson(json);
}

/// @nodoc
mixin _$FruitOrSeed {
  @JsonKey(name: "color")
  dynamic get color => throw _privateConstructorUsedError;
  @JsonKey(name: "shape")
  dynamic get shape => throw _privateConstructorUsedError;
  @JsonKey(name: "conspicuous")
  dynamic get conspicuous => throw _privateConstructorUsedError;
  @JsonKey(name: "seed_persistence")
  dynamic get seedPersistence => throw _privateConstructorUsedError;

  /// Serializes this FruitOrSeed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FruitOrSeed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FruitOrSeedCopyWith<FruitOrSeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FruitOrSeedCopyWith<$Res> {
  factory $FruitOrSeedCopyWith(
          FruitOrSeed value, $Res Function(FruitOrSeed) then) =
      _$FruitOrSeedCopyWithImpl<$Res, FruitOrSeed>;
  @useResult
  $Res call(
      {@JsonKey(name: "color") dynamic color,
      @JsonKey(name: "shape") dynamic shape,
      @JsonKey(name: "conspicuous") dynamic conspicuous,
      @JsonKey(name: "seed_persistence") dynamic seedPersistence});
}

/// @nodoc
class _$FruitOrSeedCopyWithImpl<$Res, $Val extends FruitOrSeed>
    implements $FruitOrSeedCopyWith<$Res> {
  _$FruitOrSeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FruitOrSeed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? shape = freezed,
    Object? conspicuous = freezed,
    Object? seedPersistence = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as dynamic,
      conspicuous: freezed == conspicuous
          ? _value.conspicuous
          : conspicuous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seedPersistence: freezed == seedPersistence
          ? _value.seedPersistence
          : seedPersistence // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FruitOrSeedImplCopyWith<$Res>
    implements $FruitOrSeedCopyWith<$Res> {
  factory _$$FruitOrSeedImplCopyWith(
          _$FruitOrSeedImpl value, $Res Function(_$FruitOrSeedImpl) then) =
      __$$FruitOrSeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "color") dynamic color,
      @JsonKey(name: "shape") dynamic shape,
      @JsonKey(name: "conspicuous") dynamic conspicuous,
      @JsonKey(name: "seed_persistence") dynamic seedPersistence});
}

/// @nodoc
class __$$FruitOrSeedImplCopyWithImpl<$Res>
    extends _$FruitOrSeedCopyWithImpl<$Res, _$FruitOrSeedImpl>
    implements _$$FruitOrSeedImplCopyWith<$Res> {
  __$$FruitOrSeedImplCopyWithImpl(
      _$FruitOrSeedImpl _value, $Res Function(_$FruitOrSeedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FruitOrSeed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? shape = freezed,
    Object? conspicuous = freezed,
    Object? seedPersistence = freezed,
  }) {
    return _then(_$FruitOrSeedImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as dynamic,
      conspicuous: freezed == conspicuous
          ? _value.conspicuous
          : conspicuous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seedPersistence: freezed == seedPersistence
          ? _value.seedPersistence
          : seedPersistence // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FruitOrSeedImpl implements _FruitOrSeed {
  const _$FruitOrSeedImpl(
      {@JsonKey(name: "color") this.color,
      @JsonKey(name: "shape") this.shape,
      @JsonKey(name: "conspicuous") this.conspicuous,
      @JsonKey(name: "seed_persistence") this.seedPersistence});

  factory _$FruitOrSeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FruitOrSeedImplFromJson(json);

  @override
  @JsonKey(name: "color")
  final dynamic color;
  @override
  @JsonKey(name: "shape")
  final dynamic shape;
  @override
  @JsonKey(name: "conspicuous")
  final dynamic conspicuous;
  @override
  @JsonKey(name: "seed_persistence")
  final dynamic seedPersistence;

  @override
  String toString() {
    return 'FruitOrSeed(color: $color, shape: $shape, conspicuous: $conspicuous, seedPersistence: $seedPersistence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FruitOrSeedImpl &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.shape, shape) &&
            const DeepCollectionEquality()
                .equals(other.conspicuous, conspicuous) &&
            const DeepCollectionEquality()
                .equals(other.seedPersistence, seedPersistence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(shape),
      const DeepCollectionEquality().hash(conspicuous),
      const DeepCollectionEquality().hash(seedPersistence));

  /// Create a copy of FruitOrSeed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FruitOrSeedImplCopyWith<_$FruitOrSeedImpl> get copyWith =>
      __$$FruitOrSeedImplCopyWithImpl<_$FruitOrSeedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FruitOrSeedImplToJson(
      this,
    );
  }
}

abstract class _FruitOrSeed implements FruitOrSeed {
  const factory _FruitOrSeed(
          {@JsonKey(name: "color") final dynamic color,
          @JsonKey(name: "shape") final dynamic shape,
          @JsonKey(name: "conspicuous") final dynamic conspicuous,
          @JsonKey(name: "seed_persistence") final dynamic seedPersistence}) =
      _$FruitOrSeedImpl;

  factory _FruitOrSeed.fromJson(Map<String, dynamic> json) =
      _$FruitOrSeedImpl.fromJson;

  @override
  @JsonKey(name: "color")
  dynamic get color;
  @override
  @JsonKey(name: "shape")
  dynamic get shape;
  @override
  @JsonKey(name: "conspicuous")
  dynamic get conspicuous;
  @override
  @JsonKey(name: "seed_persistence")
  dynamic get seedPersistence;

  /// Create a copy of FruitOrSeed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FruitOrSeedImplCopyWith<_$FruitOrSeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Growth _$GrowthFromJson(Map<String, dynamic> json) {
  return _Growth.fromJson(json);
}

/// @nodoc
mixin _$Growth {
  @JsonKey(name: "light")
  dynamic get light => throw _privateConstructorUsedError;
  @JsonKey(name: "sowing")
  dynamic get sowing => throw _privateConstructorUsedError;
  @JsonKey(name: "spread")
  MinimumRootDepth? get spread => throw _privateConstructorUsedError;
  @JsonKey(name: "ph_maximum")
  dynamic get phMaximum => throw _privateConstructorUsedError;
  @JsonKey(name: "ph_minimum")
  dynamic get phMinimum => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: "row_spacing")
  MinimumRootDepth? get rowSpacing => throw _privateConstructorUsedError;
  @JsonKey(name: "bloom_months")
  dynamic get bloomMonths => throw _privateConstructorUsedError;
  @JsonKey(name: "fruit_months")
  dynamic get fruitMonths => throw _privateConstructorUsedError;
  @JsonKey(name: "soil_texture")
  dynamic get soilTexture => throw _privateConstructorUsedError;
  @JsonKey(name: "growth_months")
  dynamic get growthMonths => throw _privateConstructorUsedError;
  @JsonKey(name: "soil_humidity")
  dynamic get soilHumidity => throw _privateConstructorUsedError;
  @JsonKey(name: "soil_salinity")
  dynamic get soilSalinity => throw _privateConstructorUsedError;
  @JsonKey(name: "days_to_harvest")
  dynamic get daysToHarvest => throw _privateConstructorUsedError;
  @JsonKey(name: "soil_nutriments")
  dynamic get soilNutriments => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_root_depth")
  MinimumRootDepth? get minimumRootDepth => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_temperature")
  ImumTemperature? get maximumTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_temperature")
  ImumTemperature? get minimumTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: "atmospheric_humidity")
  dynamic get atmosphericHumidity => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_precipitation")
  ImumPrecipitation? get maximumPrecipitation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_precipitation")
  ImumPrecipitation? get minimumPrecipitation =>
      throw _privateConstructorUsedError;

  /// Serializes this Growth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrowthCopyWith<Growth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthCopyWith<$Res> {
  factory $GrowthCopyWith(Growth value, $Res Function(Growth) then) =
      _$GrowthCopyWithImpl<$Res, Growth>;
  @useResult
  $Res call(
      {@JsonKey(name: "light") dynamic light,
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
      ImumPrecipitation? minimumPrecipitation});

  $MinimumRootDepthCopyWith<$Res>? get spread;
  $MinimumRootDepthCopyWith<$Res>? get rowSpacing;
  $MinimumRootDepthCopyWith<$Res>? get minimumRootDepth;
  $ImumTemperatureCopyWith<$Res>? get maximumTemperature;
  $ImumTemperatureCopyWith<$Res>? get minimumTemperature;
  $ImumPrecipitationCopyWith<$Res>? get maximumPrecipitation;
  $ImumPrecipitationCopyWith<$Res>? get minimumPrecipitation;
}

/// @nodoc
class _$GrowthCopyWithImpl<$Res, $Val extends Growth>
    implements $GrowthCopyWith<$Res> {
  _$GrowthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = freezed,
    Object? sowing = freezed,
    Object? spread = freezed,
    Object? phMaximum = freezed,
    Object? phMinimum = freezed,
    Object? description = freezed,
    Object? rowSpacing = freezed,
    Object? bloomMonths = freezed,
    Object? fruitMonths = freezed,
    Object? soilTexture = freezed,
    Object? growthMonths = freezed,
    Object? soilHumidity = freezed,
    Object? soilSalinity = freezed,
    Object? daysToHarvest = freezed,
    Object? soilNutriments = freezed,
    Object? minimumRootDepth = freezed,
    Object? maximumTemperature = freezed,
    Object? minimumTemperature = freezed,
    Object? atmosphericHumidity = freezed,
    Object? maximumPrecipitation = freezed,
    Object? minimumPrecipitation = freezed,
  }) {
    return _then(_value.copyWith(
      light: freezed == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sowing: freezed == sowing
          ? _value.sowing
          : sowing // ignore: cast_nullable_to_non_nullable
              as dynamic,
      spread: freezed == spread
          ? _value.spread
          : spread // ignore: cast_nullable_to_non_nullable
              as MinimumRootDepth?,
      phMaximum: freezed == phMaximum
          ? _value.phMaximum
          : phMaximum // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phMinimum: freezed == phMinimum
          ? _value.phMinimum
          : phMinimum // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rowSpacing: freezed == rowSpacing
          ? _value.rowSpacing
          : rowSpacing // ignore: cast_nullable_to_non_nullable
              as MinimumRootDepth?,
      bloomMonths: freezed == bloomMonths
          ? _value.bloomMonths
          : bloomMonths // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fruitMonths: freezed == fruitMonths
          ? _value.fruitMonths
          : fruitMonths // ignore: cast_nullable_to_non_nullable
              as dynamic,
      soilTexture: freezed == soilTexture
          ? _value.soilTexture
          : soilTexture // ignore: cast_nullable_to_non_nullable
              as dynamic,
      growthMonths: freezed == growthMonths
          ? _value.growthMonths
          : growthMonths // ignore: cast_nullable_to_non_nullable
              as dynamic,
      soilHumidity: freezed == soilHumidity
          ? _value.soilHumidity
          : soilHumidity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      soilSalinity: freezed == soilSalinity
          ? _value.soilSalinity
          : soilSalinity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      daysToHarvest: freezed == daysToHarvest
          ? _value.daysToHarvest
          : daysToHarvest // ignore: cast_nullable_to_non_nullable
              as dynamic,
      soilNutriments: freezed == soilNutriments
          ? _value.soilNutriments
          : soilNutriments // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minimumRootDepth: freezed == minimumRootDepth
          ? _value.minimumRootDepth
          : minimumRootDepth // ignore: cast_nullable_to_non_nullable
              as MinimumRootDepth?,
      maximumTemperature: freezed == maximumTemperature
          ? _value.maximumTemperature
          : maximumTemperature // ignore: cast_nullable_to_non_nullable
              as ImumTemperature?,
      minimumTemperature: freezed == minimumTemperature
          ? _value.minimumTemperature
          : minimumTemperature // ignore: cast_nullable_to_non_nullable
              as ImumTemperature?,
      atmosphericHumidity: freezed == atmosphericHumidity
          ? _value.atmosphericHumidity
          : atmosphericHumidity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      maximumPrecipitation: freezed == maximumPrecipitation
          ? _value.maximumPrecipitation
          : maximumPrecipitation // ignore: cast_nullable_to_non_nullable
              as ImumPrecipitation?,
      minimumPrecipitation: freezed == minimumPrecipitation
          ? _value.minimumPrecipitation
          : minimumPrecipitation // ignore: cast_nullable_to_non_nullable
              as ImumPrecipitation?,
    ) as $Val);
  }

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumRootDepthCopyWith<$Res>? get spread {
    if (_value.spread == null) {
      return null;
    }

    return $MinimumRootDepthCopyWith<$Res>(_value.spread!, (value) {
      return _then(_value.copyWith(spread: value) as $Val);
    });
  }

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumRootDepthCopyWith<$Res>? get rowSpacing {
    if (_value.rowSpacing == null) {
      return null;
    }

    return $MinimumRootDepthCopyWith<$Res>(_value.rowSpacing!, (value) {
      return _then(_value.copyWith(rowSpacing: value) as $Val);
    });
  }

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumRootDepthCopyWith<$Res>? get minimumRootDepth {
    if (_value.minimumRootDepth == null) {
      return null;
    }

    return $MinimumRootDepthCopyWith<$Res>(_value.minimumRootDepth!, (value) {
      return _then(_value.copyWith(minimumRootDepth: value) as $Val);
    });
  }

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImumTemperatureCopyWith<$Res>? get maximumTemperature {
    if (_value.maximumTemperature == null) {
      return null;
    }

    return $ImumTemperatureCopyWith<$Res>(_value.maximumTemperature!, (value) {
      return _then(_value.copyWith(maximumTemperature: value) as $Val);
    });
  }

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImumTemperatureCopyWith<$Res>? get minimumTemperature {
    if (_value.minimumTemperature == null) {
      return null;
    }

    return $ImumTemperatureCopyWith<$Res>(_value.minimumTemperature!, (value) {
      return _then(_value.copyWith(minimumTemperature: value) as $Val);
    });
  }

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImumPrecipitationCopyWith<$Res>? get maximumPrecipitation {
    if (_value.maximumPrecipitation == null) {
      return null;
    }

    return $ImumPrecipitationCopyWith<$Res>(_value.maximumPrecipitation!,
        (value) {
      return _then(_value.copyWith(maximumPrecipitation: value) as $Val);
    });
  }

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImumPrecipitationCopyWith<$Res>? get minimumPrecipitation {
    if (_value.minimumPrecipitation == null) {
      return null;
    }

    return $ImumPrecipitationCopyWith<$Res>(_value.minimumPrecipitation!,
        (value) {
      return _then(_value.copyWith(minimumPrecipitation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GrowthImplCopyWith<$Res> implements $GrowthCopyWith<$Res> {
  factory _$$GrowthImplCopyWith(
          _$GrowthImpl value, $Res Function(_$GrowthImpl) then) =
      __$$GrowthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "light") dynamic light,
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
      ImumPrecipitation? minimumPrecipitation});

  @override
  $MinimumRootDepthCopyWith<$Res>? get spread;
  @override
  $MinimumRootDepthCopyWith<$Res>? get rowSpacing;
  @override
  $MinimumRootDepthCopyWith<$Res>? get minimumRootDepth;
  @override
  $ImumTemperatureCopyWith<$Res>? get maximumTemperature;
  @override
  $ImumTemperatureCopyWith<$Res>? get minimumTemperature;
  @override
  $ImumPrecipitationCopyWith<$Res>? get maximumPrecipitation;
  @override
  $ImumPrecipitationCopyWith<$Res>? get minimumPrecipitation;
}

/// @nodoc
class __$$GrowthImplCopyWithImpl<$Res>
    extends _$GrowthCopyWithImpl<$Res, _$GrowthImpl>
    implements _$$GrowthImplCopyWith<$Res> {
  __$$GrowthImplCopyWithImpl(
      _$GrowthImpl _value, $Res Function(_$GrowthImpl) _then)
      : super(_value, _then);

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = freezed,
    Object? sowing = freezed,
    Object? spread = freezed,
    Object? phMaximum = freezed,
    Object? phMinimum = freezed,
    Object? description = freezed,
    Object? rowSpacing = freezed,
    Object? bloomMonths = freezed,
    Object? fruitMonths = freezed,
    Object? soilTexture = freezed,
    Object? growthMonths = freezed,
    Object? soilHumidity = freezed,
    Object? soilSalinity = freezed,
    Object? daysToHarvest = freezed,
    Object? soilNutriments = freezed,
    Object? minimumRootDepth = freezed,
    Object? maximumTemperature = freezed,
    Object? minimumTemperature = freezed,
    Object? atmosphericHumidity = freezed,
    Object? maximumPrecipitation = freezed,
    Object? minimumPrecipitation = freezed,
  }) {
    return _then(_$GrowthImpl(
      light: freezed == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sowing: freezed == sowing
          ? _value.sowing
          : sowing // ignore: cast_nullable_to_non_nullable
              as dynamic,
      spread: freezed == spread
          ? _value.spread
          : spread // ignore: cast_nullable_to_non_nullable
              as MinimumRootDepth?,
      phMaximum: freezed == phMaximum
          ? _value.phMaximum
          : phMaximum // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phMinimum: freezed == phMinimum
          ? _value.phMinimum
          : phMinimum // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rowSpacing: freezed == rowSpacing
          ? _value.rowSpacing
          : rowSpacing // ignore: cast_nullable_to_non_nullable
              as MinimumRootDepth?,
      bloomMonths: freezed == bloomMonths
          ? _value.bloomMonths
          : bloomMonths // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fruitMonths: freezed == fruitMonths
          ? _value.fruitMonths
          : fruitMonths // ignore: cast_nullable_to_non_nullable
              as dynamic,
      soilTexture: freezed == soilTexture
          ? _value.soilTexture
          : soilTexture // ignore: cast_nullable_to_non_nullable
              as dynamic,
      growthMonths: freezed == growthMonths
          ? _value.growthMonths
          : growthMonths // ignore: cast_nullable_to_non_nullable
              as dynamic,
      soilHumidity: freezed == soilHumidity
          ? _value.soilHumidity
          : soilHumidity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      soilSalinity: freezed == soilSalinity
          ? _value.soilSalinity
          : soilSalinity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      daysToHarvest: freezed == daysToHarvest
          ? _value.daysToHarvest
          : daysToHarvest // ignore: cast_nullable_to_non_nullable
              as dynamic,
      soilNutriments: freezed == soilNutriments
          ? _value.soilNutriments
          : soilNutriments // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minimumRootDepth: freezed == minimumRootDepth
          ? _value.minimumRootDepth
          : minimumRootDepth // ignore: cast_nullable_to_non_nullable
              as MinimumRootDepth?,
      maximumTemperature: freezed == maximumTemperature
          ? _value.maximumTemperature
          : maximumTemperature // ignore: cast_nullable_to_non_nullable
              as ImumTemperature?,
      minimumTemperature: freezed == minimumTemperature
          ? _value.minimumTemperature
          : minimumTemperature // ignore: cast_nullable_to_non_nullable
              as ImumTemperature?,
      atmosphericHumidity: freezed == atmosphericHumidity
          ? _value.atmosphericHumidity
          : atmosphericHumidity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      maximumPrecipitation: freezed == maximumPrecipitation
          ? _value.maximumPrecipitation
          : maximumPrecipitation // ignore: cast_nullable_to_non_nullable
              as ImumPrecipitation?,
      minimumPrecipitation: freezed == minimumPrecipitation
          ? _value.minimumPrecipitation
          : minimumPrecipitation // ignore: cast_nullable_to_non_nullable
              as ImumPrecipitation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthImpl implements _Growth {
  const _$GrowthImpl(
      {@JsonKey(name: "light") this.light,
      @JsonKey(name: "sowing") this.sowing,
      @JsonKey(name: "spread") this.spread,
      @JsonKey(name: "ph_maximum") this.phMaximum,
      @JsonKey(name: "ph_minimum") this.phMinimum,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "row_spacing") this.rowSpacing,
      @JsonKey(name: "bloom_months") this.bloomMonths,
      @JsonKey(name: "fruit_months") this.fruitMonths,
      @JsonKey(name: "soil_texture") this.soilTexture,
      @JsonKey(name: "growth_months") this.growthMonths,
      @JsonKey(name: "soil_humidity") this.soilHumidity,
      @JsonKey(name: "soil_salinity") this.soilSalinity,
      @JsonKey(name: "days_to_harvest") this.daysToHarvest,
      @JsonKey(name: "soil_nutriments") this.soilNutriments,
      @JsonKey(name: "minimum_root_depth") this.minimumRootDepth,
      @JsonKey(name: "maximum_temperature") this.maximumTemperature,
      @JsonKey(name: "minimum_temperature") this.minimumTemperature,
      @JsonKey(name: "atmospheric_humidity") this.atmosphericHumidity,
      @JsonKey(name: "maximum_precipitation") this.maximumPrecipitation,
      @JsonKey(name: "minimum_precipitation") this.minimumPrecipitation});

  factory _$GrowthImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthImplFromJson(json);

  @override
  @JsonKey(name: "light")
  final dynamic light;
  @override
  @JsonKey(name: "sowing")
  final dynamic sowing;
  @override
  @JsonKey(name: "spread")
  final MinimumRootDepth? spread;
  @override
  @JsonKey(name: "ph_maximum")
  final dynamic phMaximum;
  @override
  @JsonKey(name: "ph_minimum")
  final dynamic phMinimum;
  @override
  @JsonKey(name: "description")
  final dynamic description;
  @override
  @JsonKey(name: "row_spacing")
  final MinimumRootDepth? rowSpacing;
  @override
  @JsonKey(name: "bloom_months")
  final dynamic bloomMonths;
  @override
  @JsonKey(name: "fruit_months")
  final dynamic fruitMonths;
  @override
  @JsonKey(name: "soil_texture")
  final dynamic soilTexture;
  @override
  @JsonKey(name: "growth_months")
  final dynamic growthMonths;
  @override
  @JsonKey(name: "soil_humidity")
  final dynamic soilHumidity;
  @override
  @JsonKey(name: "soil_salinity")
  final dynamic soilSalinity;
  @override
  @JsonKey(name: "days_to_harvest")
  final dynamic daysToHarvest;
  @override
  @JsonKey(name: "soil_nutriments")
  final dynamic soilNutriments;
  @override
  @JsonKey(name: "minimum_root_depth")
  final MinimumRootDepth? minimumRootDepth;
  @override
  @JsonKey(name: "maximum_temperature")
  final ImumTemperature? maximumTemperature;
  @override
  @JsonKey(name: "minimum_temperature")
  final ImumTemperature? minimumTemperature;
  @override
  @JsonKey(name: "atmospheric_humidity")
  final dynamic atmosphericHumidity;
  @override
  @JsonKey(name: "maximum_precipitation")
  final ImumPrecipitation? maximumPrecipitation;
  @override
  @JsonKey(name: "minimum_precipitation")
  final ImumPrecipitation? minimumPrecipitation;

  @override
  String toString() {
    return 'Growth(light: $light, sowing: $sowing, spread: $spread, phMaximum: $phMaximum, phMinimum: $phMinimum, description: $description, rowSpacing: $rowSpacing, bloomMonths: $bloomMonths, fruitMonths: $fruitMonths, soilTexture: $soilTexture, growthMonths: $growthMonths, soilHumidity: $soilHumidity, soilSalinity: $soilSalinity, daysToHarvest: $daysToHarvest, soilNutriments: $soilNutriments, minimumRootDepth: $minimumRootDepth, maximumTemperature: $maximumTemperature, minimumTemperature: $minimumTemperature, atmosphericHumidity: $atmosphericHumidity, maximumPrecipitation: $maximumPrecipitation, minimumPrecipitation: $minimumPrecipitation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthImpl &&
            const DeepCollectionEquality().equals(other.light, light) &&
            const DeepCollectionEquality().equals(other.sowing, sowing) &&
            (identical(other.spread, spread) || other.spread == spread) &&
            const DeepCollectionEquality().equals(other.phMaximum, phMaximum) &&
            const DeepCollectionEquality().equals(other.phMinimum, phMinimum) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            (identical(other.rowSpacing, rowSpacing) ||
                other.rowSpacing == rowSpacing) &&
            const DeepCollectionEquality()
                .equals(other.bloomMonths, bloomMonths) &&
            const DeepCollectionEquality()
                .equals(other.fruitMonths, fruitMonths) &&
            const DeepCollectionEquality()
                .equals(other.soilTexture, soilTexture) &&
            const DeepCollectionEquality()
                .equals(other.growthMonths, growthMonths) &&
            const DeepCollectionEquality()
                .equals(other.soilHumidity, soilHumidity) &&
            const DeepCollectionEquality()
                .equals(other.soilSalinity, soilSalinity) &&
            const DeepCollectionEquality()
                .equals(other.daysToHarvest, daysToHarvest) &&
            const DeepCollectionEquality()
                .equals(other.soilNutriments, soilNutriments) &&
            (identical(other.minimumRootDepth, minimumRootDepth) ||
                other.minimumRootDepth == minimumRootDepth) &&
            (identical(other.maximumTemperature, maximumTemperature) ||
                other.maximumTemperature == maximumTemperature) &&
            (identical(other.minimumTemperature, minimumTemperature) ||
                other.minimumTemperature == minimumTemperature) &&
            const DeepCollectionEquality()
                .equals(other.atmosphericHumidity, atmosphericHumidity) &&
            (identical(other.maximumPrecipitation, maximumPrecipitation) ||
                other.maximumPrecipitation == maximumPrecipitation) &&
            (identical(other.minimumPrecipitation, minimumPrecipitation) ||
                other.minimumPrecipitation == minimumPrecipitation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(light),
        const DeepCollectionEquality().hash(sowing),
        spread,
        const DeepCollectionEquality().hash(phMaximum),
        const DeepCollectionEquality().hash(phMinimum),
        const DeepCollectionEquality().hash(description),
        rowSpacing,
        const DeepCollectionEquality().hash(bloomMonths),
        const DeepCollectionEquality().hash(fruitMonths),
        const DeepCollectionEquality().hash(soilTexture),
        const DeepCollectionEquality().hash(growthMonths),
        const DeepCollectionEquality().hash(soilHumidity),
        const DeepCollectionEquality().hash(soilSalinity),
        const DeepCollectionEquality().hash(daysToHarvest),
        const DeepCollectionEquality().hash(soilNutriments),
        minimumRootDepth,
        maximumTemperature,
        minimumTemperature,
        const DeepCollectionEquality().hash(atmosphericHumidity),
        maximumPrecipitation,
        minimumPrecipitation
      ]);

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthImplCopyWith<_$GrowthImpl> get copyWith =>
      __$$GrowthImplCopyWithImpl<_$GrowthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthImplToJson(
      this,
    );
  }
}

abstract class _Growth implements Growth {
  const factory _Growth(
      {@JsonKey(name: "light") final dynamic light,
      @JsonKey(name: "sowing") final dynamic sowing,
      @JsonKey(name: "spread") final MinimumRootDepth? spread,
      @JsonKey(name: "ph_maximum") final dynamic phMaximum,
      @JsonKey(name: "ph_minimum") final dynamic phMinimum,
      @JsonKey(name: "description") final dynamic description,
      @JsonKey(name: "row_spacing") final MinimumRootDepth? rowSpacing,
      @JsonKey(name: "bloom_months") final dynamic bloomMonths,
      @JsonKey(name: "fruit_months") final dynamic fruitMonths,
      @JsonKey(name: "soil_texture") final dynamic soilTexture,
      @JsonKey(name: "growth_months") final dynamic growthMonths,
      @JsonKey(name: "soil_humidity") final dynamic soilHumidity,
      @JsonKey(name: "soil_salinity") final dynamic soilSalinity,
      @JsonKey(name: "days_to_harvest") final dynamic daysToHarvest,
      @JsonKey(name: "soil_nutriments") final dynamic soilNutriments,
      @JsonKey(name: "minimum_root_depth")
      final MinimumRootDepth? minimumRootDepth,
      @JsonKey(name: "maximum_temperature")
      final ImumTemperature? maximumTemperature,
      @JsonKey(name: "minimum_temperature")
      final ImumTemperature? minimumTemperature,
      @JsonKey(name: "atmospheric_humidity") final dynamic atmosphericHumidity,
      @JsonKey(name: "maximum_precipitation")
      final ImumPrecipitation? maximumPrecipitation,
      @JsonKey(name: "minimum_precipitation")
      final ImumPrecipitation? minimumPrecipitation}) = _$GrowthImpl;

  factory _Growth.fromJson(Map<String, dynamic> json) = _$GrowthImpl.fromJson;

  @override
  @JsonKey(name: "light")
  dynamic get light;
  @override
  @JsonKey(name: "sowing")
  dynamic get sowing;
  @override
  @JsonKey(name: "spread")
  MinimumRootDepth? get spread;
  @override
  @JsonKey(name: "ph_maximum")
  dynamic get phMaximum;
  @override
  @JsonKey(name: "ph_minimum")
  dynamic get phMinimum;
  @override
  @JsonKey(name: "description")
  dynamic get description;
  @override
  @JsonKey(name: "row_spacing")
  MinimumRootDepth? get rowSpacing;
  @override
  @JsonKey(name: "bloom_months")
  dynamic get bloomMonths;
  @override
  @JsonKey(name: "fruit_months")
  dynamic get fruitMonths;
  @override
  @JsonKey(name: "soil_texture")
  dynamic get soilTexture;
  @override
  @JsonKey(name: "growth_months")
  dynamic get growthMonths;
  @override
  @JsonKey(name: "soil_humidity")
  dynamic get soilHumidity;
  @override
  @JsonKey(name: "soil_salinity")
  dynamic get soilSalinity;
  @override
  @JsonKey(name: "days_to_harvest")
  dynamic get daysToHarvest;
  @override
  @JsonKey(name: "soil_nutriments")
  dynamic get soilNutriments;
  @override
  @JsonKey(name: "minimum_root_depth")
  MinimumRootDepth? get minimumRootDepth;
  @override
  @JsonKey(name: "maximum_temperature")
  ImumTemperature? get maximumTemperature;
  @override
  @JsonKey(name: "minimum_temperature")
  ImumTemperature? get minimumTemperature;
  @override
  @JsonKey(name: "atmospheric_humidity")
  dynamic get atmosphericHumidity;
  @override
  @JsonKey(name: "maximum_precipitation")
  ImumPrecipitation? get maximumPrecipitation;
  @override
  @JsonKey(name: "minimum_precipitation")
  ImumPrecipitation? get minimumPrecipitation;

  /// Create a copy of Growth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrowthImplCopyWith<_$GrowthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImumPrecipitation _$ImumPrecipitationFromJson(Map<String, dynamic> json) {
  return _ImumPrecipitation.fromJson(json);
}

/// @nodoc
mixin _$ImumPrecipitation {
  @JsonKey(name: "mm")
  dynamic get mm => throw _privateConstructorUsedError;

  /// Serializes this ImumPrecipitation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImumPrecipitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImumPrecipitationCopyWith<ImumPrecipitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImumPrecipitationCopyWith<$Res> {
  factory $ImumPrecipitationCopyWith(
          ImumPrecipitation value, $Res Function(ImumPrecipitation) then) =
      _$ImumPrecipitationCopyWithImpl<$Res, ImumPrecipitation>;
  @useResult
  $Res call({@JsonKey(name: "mm") dynamic mm});
}

/// @nodoc
class _$ImumPrecipitationCopyWithImpl<$Res, $Val extends ImumPrecipitation>
    implements $ImumPrecipitationCopyWith<$Res> {
  _$ImumPrecipitationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImumPrecipitation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mm = freezed,
  }) {
    return _then(_value.copyWith(
      mm: freezed == mm
          ? _value.mm
          : mm // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImumPrecipitationImplCopyWith<$Res>
    implements $ImumPrecipitationCopyWith<$Res> {
  factory _$$ImumPrecipitationImplCopyWith(_$ImumPrecipitationImpl value,
          $Res Function(_$ImumPrecipitationImpl) then) =
      __$$ImumPrecipitationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "mm") dynamic mm});
}

/// @nodoc
class __$$ImumPrecipitationImplCopyWithImpl<$Res>
    extends _$ImumPrecipitationCopyWithImpl<$Res, _$ImumPrecipitationImpl>
    implements _$$ImumPrecipitationImplCopyWith<$Res> {
  __$$ImumPrecipitationImplCopyWithImpl(_$ImumPrecipitationImpl _value,
      $Res Function(_$ImumPrecipitationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImumPrecipitation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mm = freezed,
  }) {
    return _then(_$ImumPrecipitationImpl(
      mm: freezed == mm
          ? _value.mm
          : mm // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImumPrecipitationImpl implements _ImumPrecipitation {
  const _$ImumPrecipitationImpl({@JsonKey(name: "mm") this.mm});

  factory _$ImumPrecipitationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImumPrecipitationImplFromJson(json);

  @override
  @JsonKey(name: "mm")
  final dynamic mm;

  @override
  String toString() {
    return 'ImumPrecipitation(mm: $mm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImumPrecipitationImpl &&
            const DeepCollectionEquality().equals(other.mm, mm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mm));

  /// Create a copy of ImumPrecipitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImumPrecipitationImplCopyWith<_$ImumPrecipitationImpl> get copyWith =>
      __$$ImumPrecipitationImplCopyWithImpl<_$ImumPrecipitationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImumPrecipitationImplToJson(
      this,
    );
  }
}

abstract class _ImumPrecipitation implements ImumPrecipitation {
  const factory _ImumPrecipitation({@JsonKey(name: "mm") final dynamic mm}) =
      _$ImumPrecipitationImpl;

  factory _ImumPrecipitation.fromJson(Map<String, dynamic> json) =
      _$ImumPrecipitationImpl.fromJson;

  @override
  @JsonKey(name: "mm")
  dynamic get mm;

  /// Create a copy of ImumPrecipitation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImumPrecipitationImplCopyWith<_$ImumPrecipitationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImumTemperature _$ImumTemperatureFromJson(Map<String, dynamic> json) {
  return _ImumTemperature.fromJson(json);
}

/// @nodoc
mixin _$ImumTemperature {
  @JsonKey(name: "deg_c")
  dynamic get degC => throw _privateConstructorUsedError;
  @JsonKey(name: "deg_f")
  dynamic get degF => throw _privateConstructorUsedError;

  /// Serializes this ImumTemperature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImumTemperature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImumTemperatureCopyWith<ImumTemperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImumTemperatureCopyWith<$Res> {
  factory $ImumTemperatureCopyWith(
          ImumTemperature value, $Res Function(ImumTemperature) then) =
      _$ImumTemperatureCopyWithImpl<$Res, ImumTemperature>;
  @useResult
  $Res call(
      {@JsonKey(name: "deg_c") dynamic degC,
      @JsonKey(name: "deg_f") dynamic degF});
}

/// @nodoc
class _$ImumTemperatureCopyWithImpl<$Res, $Val extends ImumTemperature>
    implements $ImumTemperatureCopyWith<$Res> {
  _$ImumTemperatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImumTemperature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? degC = freezed,
    Object? degF = freezed,
  }) {
    return _then(_value.copyWith(
      degC: freezed == degC
          ? _value.degC
          : degC // ignore: cast_nullable_to_non_nullable
              as dynamic,
      degF: freezed == degF
          ? _value.degF
          : degF // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImumTemperatureImplCopyWith<$Res>
    implements $ImumTemperatureCopyWith<$Res> {
  factory _$$ImumTemperatureImplCopyWith(_$ImumTemperatureImpl value,
          $Res Function(_$ImumTemperatureImpl) then) =
      __$$ImumTemperatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "deg_c") dynamic degC,
      @JsonKey(name: "deg_f") dynamic degF});
}

/// @nodoc
class __$$ImumTemperatureImplCopyWithImpl<$Res>
    extends _$ImumTemperatureCopyWithImpl<$Res, _$ImumTemperatureImpl>
    implements _$$ImumTemperatureImplCopyWith<$Res> {
  __$$ImumTemperatureImplCopyWithImpl(
      _$ImumTemperatureImpl _value, $Res Function(_$ImumTemperatureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImumTemperature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? degC = freezed,
    Object? degF = freezed,
  }) {
    return _then(_$ImumTemperatureImpl(
      degC: freezed == degC
          ? _value.degC
          : degC // ignore: cast_nullable_to_non_nullable
              as dynamic,
      degF: freezed == degF
          ? _value.degF
          : degF // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImumTemperatureImpl implements _ImumTemperature {
  const _$ImumTemperatureImpl(
      {@JsonKey(name: "deg_c") this.degC, @JsonKey(name: "deg_f") this.degF});

  factory _$ImumTemperatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImumTemperatureImplFromJson(json);

  @override
  @JsonKey(name: "deg_c")
  final dynamic degC;
  @override
  @JsonKey(name: "deg_f")
  final dynamic degF;

  @override
  String toString() {
    return 'ImumTemperature(degC: $degC, degF: $degF)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImumTemperatureImpl &&
            const DeepCollectionEquality().equals(other.degC, degC) &&
            const DeepCollectionEquality().equals(other.degF, degF));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(degC),
      const DeepCollectionEquality().hash(degF));

  /// Create a copy of ImumTemperature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImumTemperatureImplCopyWith<_$ImumTemperatureImpl> get copyWith =>
      __$$ImumTemperatureImplCopyWithImpl<_$ImumTemperatureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImumTemperatureImplToJson(
      this,
    );
  }
}

abstract class _ImumTemperature implements ImumTemperature {
  const factory _ImumTemperature(
      {@JsonKey(name: "deg_c") final dynamic degC,
      @JsonKey(name: "deg_f") final dynamic degF}) = _$ImumTemperatureImpl;

  factory _ImumTemperature.fromJson(Map<String, dynamic> json) =
      _$ImumTemperatureImpl.fromJson;

  @override
  @JsonKey(name: "deg_c")
  dynamic get degC;
  @override
  @JsonKey(name: "deg_f")
  dynamic get degF;

  /// Create a copy of ImumTemperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImumTemperatureImplCopyWith<_$ImumTemperatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MinimumRootDepth _$MinimumRootDepthFromJson(Map<String, dynamic> json) {
  return _MinimumRootDepth.fromJson(json);
}

/// @nodoc
mixin _$MinimumRootDepth {
  @JsonKey(name: "cm")
  dynamic get cm => throw _privateConstructorUsedError;

  /// Serializes this MinimumRootDepth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MinimumRootDepth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MinimumRootDepthCopyWith<MinimumRootDepth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinimumRootDepthCopyWith<$Res> {
  factory $MinimumRootDepthCopyWith(
          MinimumRootDepth value, $Res Function(MinimumRootDepth) then) =
      _$MinimumRootDepthCopyWithImpl<$Res, MinimumRootDepth>;
  @useResult
  $Res call({@JsonKey(name: "cm") dynamic cm});
}

/// @nodoc
class _$MinimumRootDepthCopyWithImpl<$Res, $Val extends MinimumRootDepth>
    implements $MinimumRootDepthCopyWith<$Res> {
  _$MinimumRootDepthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MinimumRootDepth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cm = freezed,
  }) {
    return _then(_value.copyWith(
      cm: freezed == cm
          ? _value.cm
          : cm // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinimumRootDepthImplCopyWith<$Res>
    implements $MinimumRootDepthCopyWith<$Res> {
  factory _$$MinimumRootDepthImplCopyWith(_$MinimumRootDepthImpl value,
          $Res Function(_$MinimumRootDepthImpl) then) =
      __$$MinimumRootDepthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "cm") dynamic cm});
}

/// @nodoc
class __$$MinimumRootDepthImplCopyWithImpl<$Res>
    extends _$MinimumRootDepthCopyWithImpl<$Res, _$MinimumRootDepthImpl>
    implements _$$MinimumRootDepthImplCopyWith<$Res> {
  __$$MinimumRootDepthImplCopyWithImpl(_$MinimumRootDepthImpl _value,
      $Res Function(_$MinimumRootDepthImpl) _then)
      : super(_value, _then);

  /// Create a copy of MinimumRootDepth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cm = freezed,
  }) {
    return _then(_$MinimumRootDepthImpl(
      cm: freezed == cm
          ? _value.cm
          : cm // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinimumRootDepthImpl implements _MinimumRootDepth {
  const _$MinimumRootDepthImpl({@JsonKey(name: "cm") this.cm});

  factory _$MinimumRootDepthImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinimumRootDepthImplFromJson(json);

  @override
  @JsonKey(name: "cm")
  final dynamic cm;

  @override
  String toString() {
    return 'MinimumRootDepth(cm: $cm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinimumRootDepthImpl &&
            const DeepCollectionEquality().equals(other.cm, cm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cm));

  /// Create a copy of MinimumRootDepth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MinimumRootDepthImplCopyWith<_$MinimumRootDepthImpl> get copyWith =>
      __$$MinimumRootDepthImplCopyWithImpl<_$MinimumRootDepthImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinimumRootDepthImplToJson(
      this,
    );
  }
}

abstract class _MinimumRootDepth implements MinimumRootDepth {
  const factory _MinimumRootDepth({@JsonKey(name: "cm") final dynamic cm}) =
      _$MinimumRootDepthImpl;

  factory _MinimumRootDepth.fromJson(Map<String, dynamic> json) =
      _$MinimumRootDepthImpl.fromJson;

  @override
  @JsonKey(name: "cm")
  dynamic get cm;

  /// Create a copy of MinimumRootDepth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MinimumRootDepthImplCopyWith<_$MinimumRootDepthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Specifications _$SpecificationsFromJson(Map<String, dynamic> json) {
  return _Specifications.fromJson(json);
}

/// @nodoc
mixin _$Specifications {
  @JsonKey(name: "toxicity")
  dynamic get toxicity => throw _privateConstructorUsedError;
  @JsonKey(name: "growth_form")
  dynamic get growthForm => throw _privateConstructorUsedError;
  @JsonKey(name: "growth_rate")
  dynamic get growthRate => throw _privateConstructorUsedError;
  @JsonKey(name: "growth_habit")
  dynamic get growthHabit => throw _privateConstructorUsedError;
  @JsonKey(name: "ligneous_type")
  dynamic get ligneousType => throw _privateConstructorUsedError;
  @JsonKey(name: "average_height")
  MinimumRootDepth? get averageHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_height")
  MinimumRootDepth? get maximumHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "nitrogen_fixation")
  dynamic get nitrogenFixation => throw _privateConstructorUsedError;
  @JsonKey(name: "shape_and_orientation")
  dynamic get shapeAndOrientation => throw _privateConstructorUsedError;

  /// Serializes this Specifications to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Specifications
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecificationsCopyWith<Specifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificationsCopyWith<$Res> {
  factory $SpecificationsCopyWith(
          Specifications value, $Res Function(Specifications) then) =
      _$SpecificationsCopyWithImpl<$Res, Specifications>;
  @useResult
  $Res call(
      {@JsonKey(name: "toxicity") dynamic toxicity,
      @JsonKey(name: "growth_form") dynamic growthForm,
      @JsonKey(name: "growth_rate") dynamic growthRate,
      @JsonKey(name: "growth_habit") dynamic growthHabit,
      @JsonKey(name: "ligneous_type") dynamic ligneousType,
      @JsonKey(name: "average_height") MinimumRootDepth? averageHeight,
      @JsonKey(name: "maximum_height") MinimumRootDepth? maximumHeight,
      @JsonKey(name: "nitrogen_fixation") dynamic nitrogenFixation,
      @JsonKey(name: "shape_and_orientation") dynamic shapeAndOrientation});

  $MinimumRootDepthCopyWith<$Res>? get averageHeight;
  $MinimumRootDepthCopyWith<$Res>? get maximumHeight;
}

/// @nodoc
class _$SpecificationsCopyWithImpl<$Res, $Val extends Specifications>
    implements $SpecificationsCopyWith<$Res> {
  _$SpecificationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Specifications
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toxicity = freezed,
    Object? growthForm = freezed,
    Object? growthRate = freezed,
    Object? growthHabit = freezed,
    Object? ligneousType = freezed,
    Object? averageHeight = freezed,
    Object? maximumHeight = freezed,
    Object? nitrogenFixation = freezed,
    Object? shapeAndOrientation = freezed,
  }) {
    return _then(_value.copyWith(
      toxicity: freezed == toxicity
          ? _value.toxicity
          : toxicity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      growthForm: freezed == growthForm
          ? _value.growthForm
          : growthForm // ignore: cast_nullable_to_non_nullable
              as dynamic,
      growthRate: freezed == growthRate
          ? _value.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      growthHabit: freezed == growthHabit
          ? _value.growthHabit
          : growthHabit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ligneousType: freezed == ligneousType
          ? _value.ligneousType
          : ligneousType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      averageHeight: freezed == averageHeight
          ? _value.averageHeight
          : averageHeight // ignore: cast_nullable_to_non_nullable
              as MinimumRootDepth?,
      maximumHeight: freezed == maximumHeight
          ? _value.maximumHeight
          : maximumHeight // ignore: cast_nullable_to_non_nullable
              as MinimumRootDepth?,
      nitrogenFixation: freezed == nitrogenFixation
          ? _value.nitrogenFixation
          : nitrogenFixation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shapeAndOrientation: freezed == shapeAndOrientation
          ? _value.shapeAndOrientation
          : shapeAndOrientation // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of Specifications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumRootDepthCopyWith<$Res>? get averageHeight {
    if (_value.averageHeight == null) {
      return null;
    }

    return $MinimumRootDepthCopyWith<$Res>(_value.averageHeight!, (value) {
      return _then(_value.copyWith(averageHeight: value) as $Val);
    });
  }

  /// Create a copy of Specifications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumRootDepthCopyWith<$Res>? get maximumHeight {
    if (_value.maximumHeight == null) {
      return null;
    }

    return $MinimumRootDepthCopyWith<$Res>(_value.maximumHeight!, (value) {
      return _then(_value.copyWith(maximumHeight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecificationsImplCopyWith<$Res>
    implements $SpecificationsCopyWith<$Res> {
  factory _$$SpecificationsImplCopyWith(_$SpecificationsImpl value,
          $Res Function(_$SpecificationsImpl) then) =
      __$$SpecificationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "toxicity") dynamic toxicity,
      @JsonKey(name: "growth_form") dynamic growthForm,
      @JsonKey(name: "growth_rate") dynamic growthRate,
      @JsonKey(name: "growth_habit") dynamic growthHabit,
      @JsonKey(name: "ligneous_type") dynamic ligneousType,
      @JsonKey(name: "average_height") MinimumRootDepth? averageHeight,
      @JsonKey(name: "maximum_height") MinimumRootDepth? maximumHeight,
      @JsonKey(name: "nitrogen_fixation") dynamic nitrogenFixation,
      @JsonKey(name: "shape_and_orientation") dynamic shapeAndOrientation});

  @override
  $MinimumRootDepthCopyWith<$Res>? get averageHeight;
  @override
  $MinimumRootDepthCopyWith<$Res>? get maximumHeight;
}

/// @nodoc
class __$$SpecificationsImplCopyWithImpl<$Res>
    extends _$SpecificationsCopyWithImpl<$Res, _$SpecificationsImpl>
    implements _$$SpecificationsImplCopyWith<$Res> {
  __$$SpecificationsImplCopyWithImpl(
      _$SpecificationsImpl _value, $Res Function(_$SpecificationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Specifications
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toxicity = freezed,
    Object? growthForm = freezed,
    Object? growthRate = freezed,
    Object? growthHabit = freezed,
    Object? ligneousType = freezed,
    Object? averageHeight = freezed,
    Object? maximumHeight = freezed,
    Object? nitrogenFixation = freezed,
    Object? shapeAndOrientation = freezed,
  }) {
    return _then(_$SpecificationsImpl(
      toxicity: freezed == toxicity
          ? _value.toxicity
          : toxicity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      growthForm: freezed == growthForm
          ? _value.growthForm
          : growthForm // ignore: cast_nullable_to_non_nullable
              as dynamic,
      growthRate: freezed == growthRate
          ? _value.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      growthHabit: freezed == growthHabit
          ? _value.growthHabit
          : growthHabit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ligneousType: freezed == ligneousType
          ? _value.ligneousType
          : ligneousType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      averageHeight: freezed == averageHeight
          ? _value.averageHeight
          : averageHeight // ignore: cast_nullable_to_non_nullable
              as MinimumRootDepth?,
      maximumHeight: freezed == maximumHeight
          ? _value.maximumHeight
          : maximumHeight // ignore: cast_nullable_to_non_nullable
              as MinimumRootDepth?,
      nitrogenFixation: freezed == nitrogenFixation
          ? _value.nitrogenFixation
          : nitrogenFixation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shapeAndOrientation: freezed == shapeAndOrientation
          ? _value.shapeAndOrientation
          : shapeAndOrientation // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecificationsImpl implements _Specifications {
  const _$SpecificationsImpl(
      {@JsonKey(name: "toxicity") this.toxicity,
      @JsonKey(name: "growth_form") this.growthForm,
      @JsonKey(name: "growth_rate") this.growthRate,
      @JsonKey(name: "growth_habit") this.growthHabit,
      @JsonKey(name: "ligneous_type") this.ligneousType,
      @JsonKey(name: "average_height") this.averageHeight,
      @JsonKey(name: "maximum_height") this.maximumHeight,
      @JsonKey(name: "nitrogen_fixation") this.nitrogenFixation,
      @JsonKey(name: "shape_and_orientation") this.shapeAndOrientation});

  factory _$SpecificationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecificationsImplFromJson(json);

  @override
  @JsonKey(name: "toxicity")
  final dynamic toxicity;
  @override
  @JsonKey(name: "growth_form")
  final dynamic growthForm;
  @override
  @JsonKey(name: "growth_rate")
  final dynamic growthRate;
  @override
  @JsonKey(name: "growth_habit")
  final dynamic growthHabit;
  @override
  @JsonKey(name: "ligneous_type")
  final dynamic ligneousType;
  @override
  @JsonKey(name: "average_height")
  final MinimumRootDepth? averageHeight;
  @override
  @JsonKey(name: "maximum_height")
  final MinimumRootDepth? maximumHeight;
  @override
  @JsonKey(name: "nitrogen_fixation")
  final dynamic nitrogenFixation;
  @override
  @JsonKey(name: "shape_and_orientation")
  final dynamic shapeAndOrientation;

  @override
  String toString() {
    return 'Specifications(toxicity: $toxicity, growthForm: $growthForm, growthRate: $growthRate, growthHabit: $growthHabit, ligneousType: $ligneousType, averageHeight: $averageHeight, maximumHeight: $maximumHeight, nitrogenFixation: $nitrogenFixation, shapeAndOrientation: $shapeAndOrientation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecificationsImpl &&
            const DeepCollectionEquality().equals(other.toxicity, toxicity) &&
            const DeepCollectionEquality()
                .equals(other.growthForm, growthForm) &&
            const DeepCollectionEquality()
                .equals(other.growthRate, growthRate) &&
            const DeepCollectionEquality()
                .equals(other.growthHabit, growthHabit) &&
            const DeepCollectionEquality()
                .equals(other.ligneousType, ligneousType) &&
            (identical(other.averageHeight, averageHeight) ||
                other.averageHeight == averageHeight) &&
            (identical(other.maximumHeight, maximumHeight) ||
                other.maximumHeight == maximumHeight) &&
            const DeepCollectionEquality()
                .equals(other.nitrogenFixation, nitrogenFixation) &&
            const DeepCollectionEquality()
                .equals(other.shapeAndOrientation, shapeAndOrientation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(toxicity),
      const DeepCollectionEquality().hash(growthForm),
      const DeepCollectionEquality().hash(growthRate),
      const DeepCollectionEquality().hash(growthHabit),
      const DeepCollectionEquality().hash(ligneousType),
      averageHeight,
      maximumHeight,
      const DeepCollectionEquality().hash(nitrogenFixation),
      const DeepCollectionEquality().hash(shapeAndOrientation));

  /// Create a copy of Specifications
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecificationsImplCopyWith<_$SpecificationsImpl> get copyWith =>
      __$$SpecificationsImplCopyWithImpl<_$SpecificationsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecificationsImplToJson(
      this,
    );
  }
}

abstract class _Specifications implements Specifications {
  const factory _Specifications(
      {@JsonKey(name: "toxicity") final dynamic toxicity,
      @JsonKey(name: "growth_form") final dynamic growthForm,
      @JsonKey(name: "growth_rate") final dynamic growthRate,
      @JsonKey(name: "growth_habit") final dynamic growthHabit,
      @JsonKey(name: "ligneous_type") final dynamic ligneousType,
      @JsonKey(name: "average_height") final MinimumRootDepth? averageHeight,
      @JsonKey(name: "maximum_height") final MinimumRootDepth? maximumHeight,
      @JsonKey(name: "nitrogen_fixation") final dynamic nitrogenFixation,
      @JsonKey(name: "shape_and_orientation")
      final dynamic shapeAndOrientation}) = _$SpecificationsImpl;

  factory _Specifications.fromJson(Map<String, dynamic> json) =
      _$SpecificationsImpl.fromJson;

  @override
  @JsonKey(name: "toxicity")
  dynamic get toxicity;
  @override
  @JsonKey(name: "growth_form")
  dynamic get growthForm;
  @override
  @JsonKey(name: "growth_rate")
  dynamic get growthRate;
  @override
  @JsonKey(name: "growth_habit")
  dynamic get growthHabit;
  @override
  @JsonKey(name: "ligneous_type")
  dynamic get ligneousType;
  @override
  @JsonKey(name: "average_height")
  MinimumRootDepth? get averageHeight;
  @override
  @JsonKey(name: "maximum_height")
  MinimumRootDepth? get maximumHeight;
  @override
  @JsonKey(name: "nitrogen_fixation")
  dynamic get nitrogenFixation;
  @override
  @JsonKey(name: "shape_and_orientation")
  dynamic get shapeAndOrientation;

  /// Create a copy of Specifications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecificationsImplCopyWith<_$SpecificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartsColor _$PartsColorFromJson(Map<String, dynamic> json) {
  return _PartsColor.fromJson(json);
}

/// @nodoc
mixin _$PartsColor {
  @JsonKey(name: "bark")
  List<PartsColorBark>? get bark => throw _privateConstructorUsedError;
  @JsonKey(name: "fruit")
  List<PartsColorBark>? get fruit => throw _privateConstructorUsedError;
  @JsonKey(name: "flower")
  List<PartsColorBark>? get flower => throw _privateConstructorUsedError;
  @JsonKey(name: "habit")
  List<PartsColorBark>? get habit => throw _privateConstructorUsedError;
  @JsonKey(name: "leaf")
  List<PartsColorBark>? get leaf => throw _privateConstructorUsedError;
  @JsonKey(name: "other")
  List<PartsColorBark>? get other => throw _privateConstructorUsedError;
  @JsonKey(name: "root")
  List<PartsColorBark>? get root => throw _privateConstructorUsedError;
  @JsonKey(name: "stem")
  List<PartsColorBark>? get stem => throw _privateConstructorUsedError;
  @JsonKey(name: "seed")
  List<PartsColorBark>? get seed => throw _privateConstructorUsedError;
  @JsonKey(name: "tuber")
  List<PartsColorBark>? get tuber => throw _privateConstructorUsedError;
  @JsonKey(name: "foliage")
  List<PartsColorBark>? get foliage => throw _privateConstructorUsedError;

  /// Serializes this PartsColor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartsColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartsColorCopyWith<PartsColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartsColorCopyWith<$Res> {
  factory $PartsColorCopyWith(
          PartsColor value, $Res Function(PartsColor) then) =
      _$PartsColorCopyWithImpl<$Res, PartsColor>;
  @useResult
  $Res call(
      {@JsonKey(name: "bark") List<PartsColorBark>? bark,
      @JsonKey(name: "fruit") List<PartsColorBark>? fruit,
      @JsonKey(name: "flower") List<PartsColorBark>? flower,
      @JsonKey(name: "habit") List<PartsColorBark>? habit,
      @JsonKey(name: "leaf") List<PartsColorBark>? leaf,
      @JsonKey(name: "other") List<PartsColorBark>? other,
      @JsonKey(name: "root") List<PartsColorBark>? root,
      @JsonKey(name: "stem") List<PartsColorBark>? stem,
      @JsonKey(name: "seed") List<PartsColorBark>? seed,
      @JsonKey(name: "tuber") List<PartsColorBark>? tuber,
      @JsonKey(name: "foliage") List<PartsColorBark>? foliage});
}

/// @nodoc
class _$PartsColorCopyWithImpl<$Res, $Val extends PartsColor>
    implements $PartsColorCopyWith<$Res> {
  _$PartsColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartsColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bark = freezed,
    Object? fruit = freezed,
    Object? flower = freezed,
    Object? habit = freezed,
    Object? leaf = freezed,
    Object? other = freezed,
    Object? root = freezed,
    Object? stem = freezed,
    Object? seed = freezed,
    Object? tuber = freezed,
    Object? foliage = freezed,
  }) {
    return _then(_value.copyWith(
      bark: freezed == bark
          ? _value.bark
          : bark // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      fruit: freezed == fruit
          ? _value.fruit
          : fruit // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      flower: freezed == flower
          ? _value.flower
          : flower // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      habit: freezed == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      leaf: freezed == leaf
          ? _value.leaf
          : leaf // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      root: freezed == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      stem: freezed == stem
          ? _value.stem
          : stem // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      seed: freezed == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      tuber: freezed == tuber
          ? _value.tuber
          : tuber // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      foliage: freezed == foliage
          ? _value.foliage
          : foliage // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartsColorImplCopyWith<$Res>
    implements $PartsColorCopyWith<$Res> {
  factory _$$PartsColorImplCopyWith(
          _$PartsColorImpl value, $Res Function(_$PartsColorImpl) then) =
      __$$PartsColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bark") List<PartsColorBark>? bark,
      @JsonKey(name: "fruit") List<PartsColorBark>? fruit,
      @JsonKey(name: "flower") List<PartsColorBark>? flower,
      @JsonKey(name: "habit") List<PartsColorBark>? habit,
      @JsonKey(name: "leaf") List<PartsColorBark>? leaf,
      @JsonKey(name: "other") List<PartsColorBark>? other,
      @JsonKey(name: "root") List<PartsColorBark>? root,
      @JsonKey(name: "stem") List<PartsColorBark>? stem,
      @JsonKey(name: "seed") List<PartsColorBark>? seed,
      @JsonKey(name: "tuber") List<PartsColorBark>? tuber,
      @JsonKey(name: "foliage") List<PartsColorBark>? foliage});
}

/// @nodoc
class __$$PartsColorImplCopyWithImpl<$Res>
    extends _$PartsColorCopyWithImpl<$Res, _$PartsColorImpl>
    implements _$$PartsColorImplCopyWith<$Res> {
  __$$PartsColorImplCopyWithImpl(
      _$PartsColorImpl _value, $Res Function(_$PartsColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartsColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bark = freezed,
    Object? fruit = freezed,
    Object? flower = freezed,
    Object? habit = freezed,
    Object? leaf = freezed,
    Object? other = freezed,
    Object? root = freezed,
    Object? stem = freezed,
    Object? seed = freezed,
    Object? tuber = freezed,
    Object? foliage = freezed,
  }) {
    return _then(_$PartsColorImpl(
      bark: freezed == bark
          ? _value._bark
          : bark // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      fruit: freezed == fruit
          ? _value._fruit
          : fruit // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      flower: freezed == flower
          ? _value._flower
          : flower // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      habit: freezed == habit
          ? _value._habit
          : habit // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      leaf: freezed == leaf
          ? _value._leaf
          : leaf // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      other: freezed == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      root: freezed == root
          ? _value._root
          : root // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      stem: freezed == stem
          ? _value._stem
          : stem // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      seed: freezed == seed
          ? _value._seed
          : seed // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      tuber: freezed == tuber
          ? _value._tuber
          : tuber // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
      foliage: freezed == foliage
          ? _value._foliage
          : foliage // ignore: cast_nullable_to_non_nullable
              as List<PartsColorBark>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartsColorImpl implements _PartsColor {
  const _$PartsColorImpl(
      {@JsonKey(name: "bark") final List<PartsColorBark>? bark,
      @JsonKey(name: "fruit") final List<PartsColorBark>? fruit,
      @JsonKey(name: "flower") final List<PartsColorBark>? flower,
      @JsonKey(name: "habit") final List<PartsColorBark>? habit,
      @JsonKey(name: "leaf") final List<PartsColorBark>? leaf,
      @JsonKey(name: "other") final List<PartsColorBark>? other,
      @JsonKey(name: "root") final List<PartsColorBark>? root,
      @JsonKey(name: "stem") final List<PartsColorBark>? stem,
      @JsonKey(name: "seed") final List<PartsColorBark>? seed,
      @JsonKey(name: "tuber") final List<PartsColorBark>? tuber,
      @JsonKey(name: "foliage") final List<PartsColorBark>? foliage})
      : _bark = bark,
        _fruit = fruit,
        _flower = flower,
        _habit = habit,
        _leaf = leaf,
        _other = other,
        _root = root,
        _stem = stem,
        _seed = seed,
        _tuber = tuber,
        _foliage = foliage;

  factory _$PartsColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartsColorImplFromJson(json);

  final List<PartsColorBark>? _bark;
  @override
  @JsonKey(name: "bark")
  List<PartsColorBark>? get bark {
    final value = _bark;
    if (value == null) return null;
    if (_bark is EqualUnmodifiableListView) return _bark;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartsColorBark>? _fruit;
  @override
  @JsonKey(name: "fruit")
  List<PartsColorBark>? get fruit {
    final value = _fruit;
    if (value == null) return null;
    if (_fruit is EqualUnmodifiableListView) return _fruit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartsColorBark>? _flower;
  @override
  @JsonKey(name: "flower")
  List<PartsColorBark>? get flower {
    final value = _flower;
    if (value == null) return null;
    if (_flower is EqualUnmodifiableListView) return _flower;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartsColorBark>? _habit;
  @override
  @JsonKey(name: "habit")
  List<PartsColorBark>? get habit {
    final value = _habit;
    if (value == null) return null;
    if (_habit is EqualUnmodifiableListView) return _habit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartsColorBark>? _leaf;
  @override
  @JsonKey(name: "leaf")
  List<PartsColorBark>? get leaf {
    final value = _leaf;
    if (value == null) return null;
    if (_leaf is EqualUnmodifiableListView) return _leaf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartsColorBark>? _other;
  @override
  @JsonKey(name: "other")
  List<PartsColorBark>? get other {
    final value = _other;
    if (value == null) return null;
    if (_other is EqualUnmodifiableListView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartsColorBark>? _root;
  @override
  @JsonKey(name: "root")
  List<PartsColorBark>? get root {
    final value = _root;
    if (value == null) return null;
    if (_root is EqualUnmodifiableListView) return _root;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartsColorBark>? _stem;
  @override
  @JsonKey(name: "stem")
  List<PartsColorBark>? get stem {
    final value = _stem;
    if (value == null) return null;
    if (_stem is EqualUnmodifiableListView) return _stem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartsColorBark>? _seed;
  @override
  @JsonKey(name: "seed")
  List<PartsColorBark>? get seed {
    final value = _seed;
    if (value == null) return null;
    if (_seed is EqualUnmodifiableListView) return _seed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartsColorBark>? _tuber;
  @override
  @JsonKey(name: "tuber")
  List<PartsColorBark>? get tuber {
    final value = _tuber;
    if (value == null) return null;
    if (_tuber is EqualUnmodifiableListView) return _tuber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartsColorBark>? _foliage;
  @override
  @JsonKey(name: "foliage")
  List<PartsColorBark>? get foliage {
    final value = _foliage;
    if (value == null) return null;
    if (_foliage is EqualUnmodifiableListView) return _foliage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PartsColor(bark: $bark, fruit: $fruit, flower: $flower, habit: $habit, leaf: $leaf, other: $other, root: $root, stem: $stem, seed: $seed, tuber: $tuber, foliage: $foliage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartsColorImpl &&
            const DeepCollectionEquality().equals(other._bark, _bark) &&
            const DeepCollectionEquality().equals(other._fruit, _fruit) &&
            const DeepCollectionEquality().equals(other._flower, _flower) &&
            const DeepCollectionEquality().equals(other._habit, _habit) &&
            const DeepCollectionEquality().equals(other._leaf, _leaf) &&
            const DeepCollectionEquality().equals(other._other, this._other) &&
            const DeepCollectionEquality().equals(other._root, _root) &&
            const DeepCollectionEquality().equals(other._stem, _stem) &&
            const DeepCollectionEquality().equals(other._seed, _seed) &&
            const DeepCollectionEquality().equals(other._tuber, _tuber) &&
            const DeepCollectionEquality().equals(other._foliage, _foliage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bark),
      const DeepCollectionEquality().hash(_fruit),
      const DeepCollectionEquality().hash(_flower),
      const DeepCollectionEquality().hash(_habit),
      const DeepCollectionEquality().hash(_leaf),
      const DeepCollectionEquality().hash(_other),
      const DeepCollectionEquality().hash(_root),
      const DeepCollectionEquality().hash(_stem),
      const DeepCollectionEquality().hash(_seed),
      const DeepCollectionEquality().hash(_tuber),
      const DeepCollectionEquality().hash(_foliage));

  /// Create a copy of PartsColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartsColorImplCopyWith<_$PartsColorImpl> get copyWith =>
      __$$PartsColorImplCopyWithImpl<_$PartsColorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartsColorImplToJson(
      this,
    );
  }
}

abstract class _PartsColor implements PartsColor {
  const factory _PartsColor(
          {@JsonKey(name: "bark") final List<PartsColorBark>? bark,
          @JsonKey(name: "fruit") final List<PartsColorBark>? fruit,
          @JsonKey(name: "flower") final List<PartsColorBark>? flower,
          @JsonKey(name: "habit") final List<PartsColorBark>? habit,
          @JsonKey(name: "leaf") final List<PartsColorBark>? leaf,
          @JsonKey(name: "other") final List<PartsColorBark>? other,
          @JsonKey(name: "root") final List<PartsColorBark>? root,
          @JsonKey(name: "stem") final List<PartsColorBark>? stem,
          @JsonKey(name: "seed") final List<PartsColorBark>? seed,
          @JsonKey(name: "tuber") final List<PartsColorBark>? tuber,
          @JsonKey(name: "foliage") final List<PartsColorBark>? foliage}) =
      _$PartsColorImpl;

  factory _PartsColor.fromJson(Map<String, dynamic> json) =
      _$PartsColorImpl.fromJson;

  @override
  @JsonKey(name: "bark")
  List<PartsColorBark>? get bark;
  @override
  @JsonKey(name: "fruit")
  List<PartsColorBark>? get fruit;
  @override
  @JsonKey(name: "flower")
  List<PartsColorBark>? get flower;
  @override
  @JsonKey(name: "habit")
  List<PartsColorBark>? get habit;
  @override
  @JsonKey(name: "leaf")
  List<PartsColorBark>? get leaf;
  @override
  @JsonKey(name: "other")
  List<PartsColorBark>? get other;
  @override
  @JsonKey(name: "root")
  List<PartsColorBark>? get root;
  @override
  @JsonKey(name: "stem")
  List<PartsColorBark>? get stem;
  @override
  @JsonKey(name: "seed")
  List<PartsColorBark>? get seed;
  @override
  @JsonKey(name: "tuber")
  List<PartsColorBark>? get tuber;
  @override
  @JsonKey(name: "foliage")
  List<PartsColorBark>? get foliage;

  /// Create a copy of PartsColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartsColorImplCopyWith<_$PartsColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartsColorBark _$PartsColorBarkFromJson(Map<String, dynamic> json) {
  return _PartsColorBark.fromJson(json);
}

/// @nodoc
mixin _$PartsColorBark {
  @JsonKey(name: "season")
  Exposure? get season => throw _privateConstructorUsedError;
  @JsonKey(name: "colors")
  List<ZColor>? get colors => throw _privateConstructorUsedError;

  /// Serializes this PartsColorBark to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartsColorBark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartsColorBarkCopyWith<PartsColorBark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartsColorBarkCopyWith<$Res> {
  factory $PartsColorBarkCopyWith(
          PartsColorBark value, $Res Function(PartsColorBark) then) =
      _$PartsColorBarkCopyWithImpl<$Res, PartsColorBark>;
  @useResult
  $Res call(
      {@JsonKey(name: "season") Exposure? season,
      @JsonKey(name: "colors") List<ZColor>? colors});

  $ExposureCopyWith<$Res>? get season;
}

/// @nodoc
class _$PartsColorBarkCopyWithImpl<$Res, $Val extends PartsColorBark>
    implements $PartsColorBarkCopyWith<$Res> {
  _$PartsColorBarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartsColorBark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = freezed,
    Object? colors = freezed,
  }) {
    return _then(_value.copyWith(
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as Exposure?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ZColor>?,
    ) as $Val);
  }

  /// Create a copy of PartsColorBark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExposureCopyWith<$Res>? get season {
    if (_value.season == null) {
      return null;
    }

    return $ExposureCopyWith<$Res>(_value.season!, (value) {
      return _then(_value.copyWith(season: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PartsColorBarkImplCopyWith<$Res>
    implements $PartsColorBarkCopyWith<$Res> {
  factory _$$PartsColorBarkImplCopyWith(_$PartsColorBarkImpl value,
          $Res Function(_$PartsColorBarkImpl) then) =
      __$$PartsColorBarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "season") Exposure? season,
      @JsonKey(name: "colors") List<ZColor>? colors});

  @override
  $ExposureCopyWith<$Res>? get season;
}

/// @nodoc
class __$$PartsColorBarkImplCopyWithImpl<$Res>
    extends _$PartsColorBarkCopyWithImpl<$Res, _$PartsColorBarkImpl>
    implements _$$PartsColorBarkImplCopyWith<$Res> {
  __$$PartsColorBarkImplCopyWithImpl(
      _$PartsColorBarkImpl _value, $Res Function(_$PartsColorBarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartsColorBark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = freezed,
    Object? colors = freezed,
  }) {
    return _then(_$PartsColorBarkImpl(
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as Exposure?,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ZColor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartsColorBarkImpl implements _PartsColorBark {
  const _$PartsColorBarkImpl(
      {@JsonKey(name: "season") this.season,
      @JsonKey(name: "colors") final List<ZColor>? colors})
      : _colors = colors;

  factory _$PartsColorBarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartsColorBarkImplFromJson(json);

  @override
  @JsonKey(name: "season")
  final Exposure? season;
  final List<ZColor>? _colors;
  @override
  @JsonKey(name: "colors")
  List<ZColor>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PartsColorBark(season: $season, colors: $colors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartsColorBarkImpl &&
            (identical(other.season, season) || other.season == season) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, season, const DeepCollectionEquality().hash(_colors));

  /// Create a copy of PartsColorBark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartsColorBarkImplCopyWith<_$PartsColorBarkImpl> get copyWith =>
      __$$PartsColorBarkImplCopyWithImpl<_$PartsColorBarkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartsColorBarkImplToJson(
      this,
    );
  }
}

abstract class _PartsColorBark implements PartsColorBark {
  const factory _PartsColorBark(
          {@JsonKey(name: "season") final Exposure? season,
          @JsonKey(name: "colors") final List<ZColor>? colors}) =
      _$PartsColorBarkImpl;

  factory _PartsColorBark.fromJson(Map<String, dynamic> json) =
      _$PartsColorBarkImpl.fromJson;

  @override
  @JsonKey(name: "season")
  Exposure? get season;
  @override
  @JsonKey(name: "colors")
  List<ZColor>? get colors;

  /// Create a copy of PartsColorBark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartsColorBarkImplCopyWith<_$PartsColorBarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pathogens _$PathogensFromJson(Map<String, dynamic> json) {
  return _Pathogens.fromJson(json);
}

/// @nodoc
mixin _$Pathogens {
  @JsonKey(name: "disease")
  List<String>? get disease => throw _privateConstructorUsedError;
  @JsonKey(name: "pest")
  List<dynamic>? get pest => throw _privateConstructorUsedError;

  /// Serializes this Pathogens to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pathogens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PathogensCopyWith<Pathogens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathogensCopyWith<$Res> {
  factory $PathogensCopyWith(Pathogens value, $Res Function(Pathogens) then) =
      _$PathogensCopyWithImpl<$Res, Pathogens>;
  @useResult
  $Res call(
      {@JsonKey(name: "disease") List<String>? disease,
      @JsonKey(name: "pest") List<dynamic>? pest});
}

/// @nodoc
class _$PathogensCopyWithImpl<$Res, $Val extends Pathogens>
    implements $PathogensCopyWith<$Res> {
  _$PathogensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pathogens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disease = freezed,
    Object? pest = freezed,
  }) {
    return _then(_value.copyWith(
      disease: freezed == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pest: freezed == pest
          ? _value.pest
          : pest // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PathogensImplCopyWith<$Res>
    implements $PathogensCopyWith<$Res> {
  factory _$$PathogensImplCopyWith(
          _$PathogensImpl value, $Res Function(_$PathogensImpl) then) =
      __$$PathogensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "disease") List<String>? disease,
      @JsonKey(name: "pest") List<dynamic>? pest});
}

/// @nodoc
class __$$PathogensImplCopyWithImpl<$Res>
    extends _$PathogensCopyWithImpl<$Res, _$PathogensImpl>
    implements _$$PathogensImplCopyWith<$Res> {
  __$$PathogensImplCopyWithImpl(
      _$PathogensImpl _value, $Res Function(_$PathogensImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pathogens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disease = freezed,
    Object? pest = freezed,
  }) {
    return _then(_$PathogensImpl(
      disease: freezed == disease
          ? _value._disease
          : disease // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pest: freezed == pest
          ? _value._pest
          : pest // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PathogensImpl implements _Pathogens {
  const _$PathogensImpl(
      {@JsonKey(name: "disease") final List<String>? disease,
      @JsonKey(name: "pest") final List<dynamic>? pest})
      : _disease = disease,
        _pest = pest;

  factory _$PathogensImpl.fromJson(Map<String, dynamic> json) =>
      _$$PathogensImplFromJson(json);

  final List<String>? _disease;
  @override
  @JsonKey(name: "disease")
  List<String>? get disease {
    final value = _disease;
    if (value == null) return null;
    if (_disease is EqualUnmodifiableListView) return _disease;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _pest;
  @override
  @JsonKey(name: "pest")
  List<dynamic>? get pest {
    final value = _pest;
    if (value == null) return null;
    if (_pest is EqualUnmodifiableListView) return _pest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Pathogens(disease: $disease, pest: $pest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathogensImpl &&
            const DeepCollectionEquality().equals(other._disease, _disease) &&
            const DeepCollectionEquality().equals(other._pest, _pest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_disease),
      const DeepCollectionEquality().hash(_pest));

  /// Create a copy of Pathogens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PathogensImplCopyWith<_$PathogensImpl> get copyWith =>
      __$$PathogensImplCopyWithImpl<_$PathogensImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PathogensImplToJson(
      this,
    );
  }
}

abstract class _Pathogens implements Pathogens {
  const factory _Pathogens(
      {@JsonKey(name: "disease") final List<String>? disease,
      @JsonKey(name: "pest") final List<dynamic>? pest}) = _$PathogensImpl;

  factory _Pathogens.fromJson(Map<String, dynamic> json) =
      _$PathogensImpl.fromJson;

  @override
  @JsonKey(name: "disease")
  List<String>? get disease;
  @override
  @JsonKey(name: "pest")
  List<dynamic>? get pest;

  /// Create a copy of Pathogens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PathogensImplCopyWith<_$PathogensImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegularEvent _$RegularEventFromJson(Map<String, dynamic> json) {
  return _RegularEvent.fromJson(json);
}

/// @nodoc
mixin _$RegularEvent {
  @JsonKey(name: "frequency")
  HeightCm? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: "frequency_unit")
  Exposure? get frequencyUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "frequency_count")
  int? get frequencyCount => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "frequency") HeightCm? frequency,
      @JsonKey(name: "frequency_unit") Exposure? frequencyUnit,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "frequency_count") int? frequencyCount});

  $HeightCmCopyWith<$Res>? get frequency;
  $ExposureCopyWith<$Res>? get frequencyUnit;
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
    Object? frequency = freezed,
    Object? frequencyUnit = freezed,
    Object? name = freezed,
    Object? frequencyCount = freezed,
  }) {
    return _then(_value.copyWith(
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as HeightCm?,
      frequencyUnit: freezed == frequencyUnit
          ? _value.frequencyUnit
          : frequencyUnit // ignore: cast_nullable_to_non_nullable
              as Exposure?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      frequencyCount: freezed == frequencyCount
          ? _value.frequencyCount
          : frequencyCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of RegularEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeightCmCopyWith<$Res>? get frequency {
    if (_value.frequency == null) {
      return null;
    }

    return $HeightCmCopyWith<$Res>(_value.frequency!, (value) {
      return _then(_value.copyWith(frequency: value) as $Val);
    });
  }

  /// Create a copy of RegularEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExposureCopyWith<$Res>? get frequencyUnit {
    if (_value.frequencyUnit == null) {
      return null;
    }

    return $ExposureCopyWith<$Res>(_value.frequencyUnit!, (value) {
      return _then(_value.copyWith(frequencyUnit: value) as $Val);
    });
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
      {@JsonKey(name: "frequency") HeightCm? frequency,
      @JsonKey(name: "frequency_unit") Exposure? frequencyUnit,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "frequency_count") int? frequencyCount});

  @override
  $HeightCmCopyWith<$Res>? get frequency;
  @override
  $ExposureCopyWith<$Res>? get frequencyUnit;
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
    Object? frequency = freezed,
    Object? frequencyUnit = freezed,
    Object? name = freezed,
    Object? frequencyCount = freezed,
  }) {
    return _then(_$RegularEventImpl(
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as HeightCm?,
      frequencyUnit: freezed == frequencyUnit
          ? _value.frequencyUnit
          : frequencyUnit // ignore: cast_nullable_to_non_nullable
              as Exposure?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      frequencyCount: freezed == frequencyCount
          ? _value.frequencyCount
          : frequencyCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegularEventImpl implements _RegularEvent {
  const _$RegularEventImpl(
      {@JsonKey(name: "frequency") this.frequency,
      @JsonKey(name: "frequency_unit") this.frequencyUnit,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "frequency_count") this.frequencyCount});

  factory _$RegularEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegularEventImplFromJson(json);

  @override
  @JsonKey(name: "frequency")
  final HeightCm? frequency;
  @override
  @JsonKey(name: "frequency_unit")
  final Exposure? frequencyUnit;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "frequency_count")
  final int? frequencyCount;

  @override
  String toString() {
    return 'RegularEvent(frequency: $frequency, frequencyUnit: $frequencyUnit, name: $name, frequencyCount: $frequencyCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegularEventImpl &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.frequencyUnit, frequencyUnit) ||
                other.frequencyUnit == frequencyUnit) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.frequencyCount, frequencyCount) ||
                other.frequencyCount == frequencyCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, frequency, frequencyUnit, name, frequencyCount);

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
          {@JsonKey(name: "frequency") final HeightCm? frequency,
          @JsonKey(name: "frequency_unit") final Exposure? frequencyUnit,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "frequency_count") final int? frequencyCount}) =
      _$RegularEventImpl;

  factory _RegularEvent.fromJson(Map<String, dynamic> json) =
      _$RegularEventImpl.fromJson;

  @override
  @JsonKey(name: "frequency")
  HeightCm? get frequency;
  @override
  @JsonKey(name: "frequency_unit")
  Exposure? get frequencyUnit;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "frequency_count")
  int? get frequencyCount;

  /// Create a copy of RegularEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegularEventImplCopyWith<_$RegularEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScientificClassification _$ScientificClassificationFromJson(
    Map<String, dynamic> json) {
  return _ScientificClassification.fromJson(json);
}

/// @nodoc
mixin _$ScientificClassification {
  @JsonKey(name: "orders")
  List<String>? get orders => throw _privateConstructorUsedError;
  @JsonKey(name: "family")
  String? get family => throw _privateConstructorUsedError;
  @JsonKey(name: "phylum")
  String? get phylum => throw _privateConstructorUsedError;
  @JsonKey(name: "classify")
  String? get classify => throw _privateConstructorUsedError;
  @JsonKey(name: "genus")
  String? get genus => throw _privateConstructorUsedError;
  @JsonKey(name: "species")
  String? get species => throw _privateConstructorUsedError;

  /// Serializes this ScientificClassification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScientificClassification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScientificClassificationCopyWith<ScientificClassification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScientificClassificationCopyWith<$Res> {
  factory $ScientificClassificationCopyWith(ScientificClassification value,
          $Res Function(ScientificClassification) then) =
      _$ScientificClassificationCopyWithImpl<$Res, ScientificClassification>;
  @useResult
  $Res call(
      {@JsonKey(name: "orders") List<String>? orders,
      @JsonKey(name: "family") String? family,
      @JsonKey(name: "phylum") String? phylum,
      @JsonKey(name: "classify") String? classify,
      @JsonKey(name: "genus") String? genus,
      @JsonKey(name: "species") String? species});
}

/// @nodoc
class _$ScientificClassificationCopyWithImpl<$Res,
        $Val extends ScientificClassification>
    implements $ScientificClassificationCopyWith<$Res> {
  _$ScientificClassificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScientificClassification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
    Object? family = freezed,
    Object? phylum = freezed,
    Object? classify = freezed,
    Object? genus = freezed,
    Object? species = freezed,
  }) {
    return _then(_value.copyWith(
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String?,
      phylum: freezed == phylum
          ? _value.phylum
          : phylum // ignore: cast_nullable_to_non_nullable
              as String?,
      classify: freezed == classify
          ? _value.classify
          : classify // ignore: cast_nullable_to_non_nullable
              as String?,
      genus: freezed == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScientificClassificationImplCopyWith<$Res>
    implements $ScientificClassificationCopyWith<$Res> {
  factory _$$ScientificClassificationImplCopyWith(
          _$ScientificClassificationImpl value,
          $Res Function(_$ScientificClassificationImpl) then) =
      __$$ScientificClassificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "orders") List<String>? orders,
      @JsonKey(name: "family") String? family,
      @JsonKey(name: "phylum") String? phylum,
      @JsonKey(name: "classify") String? classify,
      @JsonKey(name: "genus") String? genus,
      @JsonKey(name: "species") String? species});
}

/// @nodoc
class __$$ScientificClassificationImplCopyWithImpl<$Res>
    extends _$ScientificClassificationCopyWithImpl<$Res,
        _$ScientificClassificationImpl>
    implements _$$ScientificClassificationImplCopyWith<$Res> {
  __$$ScientificClassificationImplCopyWithImpl(
      _$ScientificClassificationImpl _value,
      $Res Function(_$ScientificClassificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScientificClassification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
    Object? family = freezed,
    Object? phylum = freezed,
    Object? classify = freezed,
    Object? genus = freezed,
    Object? species = freezed,
  }) {
    return _then(_$ScientificClassificationImpl(
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String?,
      phylum: freezed == phylum
          ? _value.phylum
          : phylum // ignore: cast_nullable_to_non_nullable
              as String?,
      classify: freezed == classify
          ? _value.classify
          : classify // ignore: cast_nullable_to_non_nullable
              as String?,
      genus: freezed == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScientificClassificationImpl implements _ScientificClassification {
  const _$ScientificClassificationImpl(
      {@JsonKey(name: "orders") final List<String>? orders,
      @JsonKey(name: "family") this.family,
      @JsonKey(name: "phylum") this.phylum,
      @JsonKey(name: "classify") this.classify,
      @JsonKey(name: "genus") this.genus,
      @JsonKey(name: "species") this.species})
      : _orders = orders;

  factory _$ScientificClassificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScientificClassificationImplFromJson(json);

  final List<String>? _orders;
  @override
  @JsonKey(name: "orders")
  List<String>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "family")
  final String? family;
  @override
  @JsonKey(name: "phylum")
  final String? phylum;
  @override
  @JsonKey(name: "classify")
  final String? classify;
  @override
  @JsonKey(name: "genus")
  final String? genus;
  @override
  @JsonKey(name: "species")
  final String? species;

  @override
  String toString() {
    return 'ScientificClassification(orders: $orders, family: $family, phylum: $phylum, classify: $classify, genus: $genus, species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScientificClassificationImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.phylum, phylum) || other.phylum == phylum) &&
            (identical(other.classify, classify) ||
                other.classify == classify) &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.species, species) || other.species == species));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      family,
      phylum,
      classify,
      genus,
      species);

  /// Create a copy of ScientificClassification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScientificClassificationImplCopyWith<_$ScientificClassificationImpl>
      get copyWith => __$$ScientificClassificationImplCopyWithImpl<
          _$ScientificClassificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScientificClassificationImplToJson(
      this,
    );
  }
}

abstract class _ScientificClassification implements ScientificClassification {
  const factory _ScientificClassification(
          {@JsonKey(name: "orders") final List<String>? orders,
          @JsonKey(name: "family") final String? family,
          @JsonKey(name: "phylum") final String? phylum,
          @JsonKey(name: "classify") final String? classify,
          @JsonKey(name: "genus") final String? genus,
          @JsonKey(name: "species") final String? species}) =
      _$ScientificClassificationImpl;

  factory _ScientificClassification.fromJson(Map<String, dynamic> json) =
      _$ScientificClassificationImpl.fromJson;

  @override
  @JsonKey(name: "orders")
  List<String>? get orders;
  @override
  @JsonKey(name: "family")
  String? get family;
  @override
  @JsonKey(name: "phylum")
  String? get phylum;
  @override
  @JsonKey(name: "classify")
  String? get classify;
  @override
  @JsonKey(name: "genus")
  String? get genus;
  @override
  @JsonKey(name: "species")
  String? get species;

  /// Create a copy of ScientificClassification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScientificClassificationImplCopyWith<_$ScientificClassificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Source _$SourceFromJson(Map<String, dynamic> json) {
  return _Source.fromJson(json);
}

/// @nodoc
mixin _$Source {
  @JsonKey(name: "last_update")
  DateTime? get lastUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "sid")
  String? get sid => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "source_url")
  String? get sourceUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "citation")
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
      {@JsonKey(name: "last_update") DateTime? lastUpdate,
      @JsonKey(name: "sid") String? sid,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "source_url") String? sourceUrl,
      @JsonKey(name: "citation") String? citation});
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
      {@JsonKey(name: "last_update") DateTime? lastUpdate,
      @JsonKey(name: "sid") String? sid,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "source_url") String? sourceUrl,
      @JsonKey(name: "citation") String? citation});
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
      {@JsonKey(name: "last_update") this.lastUpdate,
      @JsonKey(name: "sid") this.sid,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "source_url") this.sourceUrl,
      @JsonKey(name: "citation") this.citation});

  factory _$SourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceImplFromJson(json);

  @override
  @JsonKey(name: "last_update")
  final DateTime? lastUpdate;
  @override
  @JsonKey(name: "sid")
  final String? sid;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "source_url")
  final String? sourceUrl;
  @override
  @JsonKey(name: "citation")
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
      {@JsonKey(name: "last_update") final DateTime? lastUpdate,
      @JsonKey(name: "sid") final String? sid,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "source_url") final String? sourceUrl,
      @JsonKey(name: "citation") final String? citation}) = _$SourceImpl;

  factory _Source.fromJson(Map<String, dynamic> json) = _$SourceImpl.fromJson;

  @override
  @JsonKey(name: "last_update")
  DateTime? get lastUpdate;
  @override
  @JsonKey(name: "sid")
  String? get sid;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "source_url")
  String? get sourceUrl;
  @override
  @JsonKey(name: "citation")
  String? get citation;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
