// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garden_plant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GardenPlantModel _$GardenPlantModelFromJson(Map<String, dynamic> json) {
  return _GardenPlantModel.fromJson(json);
}

/// @nodoc
mixin _$GardenPlantModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_name')
  String get customName => throw _privateConstructorUsedError;
  @JsonKey(name: 'species_id')
  int? get speciesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'species_slug')
  String? get speciesSlug => throw _privateConstructorUsedError;
  @JsonKey(name: 'species_latin_name')
  String? get speciesLatinName => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  int? get roomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunlight_exposure')
  String? get sunlightExposure => throw _privateConstructorUsedError;
  @JsonKey(name: 'plant_size')
  String? get plantSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'pot_size_mm')
  int? get potSizeMm => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_watering')
  String? get lastWatering => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_watering_exact_date')
  String? get lastWateringExactDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_repotting')
  String? get lastRepotting => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_repotting_exact_date')
  String? get lastRepottingExactDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GardenPlantModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GardenPlantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GardenPlantModelCopyWith<GardenPlantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GardenPlantModelCopyWith<$Res> {
  factory $GardenPlantModelCopyWith(
          GardenPlantModel value, $Res Function(GardenPlantModel) then) =
      _$GardenPlantModelCopyWithImpl<$Res, GardenPlantModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'custom_name') String customName,
      @JsonKey(name: 'species_id') int? speciesId,
      @JsonKey(name: 'species_slug') String? speciesSlug,
      @JsonKey(name: 'species_latin_name') String? speciesLatinName,
      @JsonKey(name: 'room_id') int? roomId,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'sunlight_exposure') String? sunlightExposure,
      @JsonKey(name: 'plant_size') String? plantSize,
      @JsonKey(name: 'pot_size_mm') int? potSizeMm,
      @JsonKey(name: 'last_watering') String? lastWatering,
      @JsonKey(name: 'last_watering_exact_date') String? lastWateringExactDate,
      @JsonKey(name: 'last_repotting') String? lastRepotting,
      @JsonKey(name: 'last_repotting_exact_date')
      String? lastRepottingExactDate,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$GardenPlantModelCopyWithImpl<$Res, $Val extends GardenPlantModel>
    implements $GardenPlantModelCopyWith<$Res> {
  _$GardenPlantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GardenPlantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customName = null,
    Object? speciesId = freezed,
    Object? speciesSlug = freezed,
    Object? speciesLatinName = freezed,
    Object? roomId = freezed,
    Object? imageUrl = freezed,
    Object? sunlightExposure = freezed,
    Object? plantSize = freezed,
    Object? potSizeMm = freezed,
    Object? lastWatering = freezed,
    Object? lastWateringExactDate = freezed,
    Object? lastRepotting = freezed,
    Object? lastRepottingExactDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customName: null == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
      speciesId: freezed == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as int?,
      speciesSlug: freezed == speciesSlug
          ? _value.speciesSlug
          : speciesSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesLatinName: freezed == speciesLatinName
          ? _value.speciesLatinName
          : speciesLatinName // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sunlightExposure: freezed == sunlightExposure
          ? _value.sunlightExposure
          : sunlightExposure // ignore: cast_nullable_to_non_nullable
              as String?,
      plantSize: freezed == plantSize
          ? _value.plantSize
          : plantSize // ignore: cast_nullable_to_non_nullable
              as String?,
      potSizeMm: freezed == potSizeMm
          ? _value.potSizeMm
          : potSizeMm // ignore: cast_nullable_to_non_nullable
              as int?,
      lastWatering: freezed == lastWatering
          ? _value.lastWatering
          : lastWatering // ignore: cast_nullable_to_non_nullable
              as String?,
      lastWateringExactDate: freezed == lastWateringExactDate
          ? _value.lastWateringExactDate
          : lastWateringExactDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastRepotting: freezed == lastRepotting
          ? _value.lastRepotting
          : lastRepotting // ignore: cast_nullable_to_non_nullable
              as String?,
      lastRepottingExactDate: freezed == lastRepottingExactDate
          ? _value.lastRepottingExactDate
          : lastRepottingExactDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GardenPlantModelImplCopyWith<$Res>
    implements $GardenPlantModelCopyWith<$Res> {
  factory _$$GardenPlantModelImplCopyWith(_$GardenPlantModelImpl value,
          $Res Function(_$GardenPlantModelImpl) then) =
      __$$GardenPlantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'custom_name') String customName,
      @JsonKey(name: 'species_id') int? speciesId,
      @JsonKey(name: 'species_slug') String? speciesSlug,
      @JsonKey(name: 'species_latin_name') String? speciesLatinName,
      @JsonKey(name: 'room_id') int? roomId,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'sunlight_exposure') String? sunlightExposure,
      @JsonKey(name: 'plant_size') String? plantSize,
      @JsonKey(name: 'pot_size_mm') int? potSizeMm,
      @JsonKey(name: 'last_watering') String? lastWatering,
      @JsonKey(name: 'last_watering_exact_date') String? lastWateringExactDate,
      @JsonKey(name: 'last_repotting') String? lastRepotting,
      @JsonKey(name: 'last_repotting_exact_date')
      String? lastRepottingExactDate,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$GardenPlantModelImplCopyWithImpl<$Res>
    extends _$GardenPlantModelCopyWithImpl<$Res, _$GardenPlantModelImpl>
    implements _$$GardenPlantModelImplCopyWith<$Res> {
  __$$GardenPlantModelImplCopyWithImpl(_$GardenPlantModelImpl _value,
      $Res Function(_$GardenPlantModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GardenPlantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customName = null,
    Object? speciesId = freezed,
    Object? speciesSlug = freezed,
    Object? speciesLatinName = freezed,
    Object? roomId = freezed,
    Object? imageUrl = freezed,
    Object? sunlightExposure = freezed,
    Object? plantSize = freezed,
    Object? potSizeMm = freezed,
    Object? lastWatering = freezed,
    Object? lastWateringExactDate = freezed,
    Object? lastRepotting = freezed,
    Object? lastRepottingExactDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GardenPlantModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customName: null == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
      speciesId: freezed == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as int?,
      speciesSlug: freezed == speciesSlug
          ? _value.speciesSlug
          : speciesSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesLatinName: freezed == speciesLatinName
          ? _value.speciesLatinName
          : speciesLatinName // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sunlightExposure: freezed == sunlightExposure
          ? _value.sunlightExposure
          : sunlightExposure // ignore: cast_nullable_to_non_nullable
              as String?,
      plantSize: freezed == plantSize
          ? _value.plantSize
          : plantSize // ignore: cast_nullable_to_non_nullable
              as String?,
      potSizeMm: freezed == potSizeMm
          ? _value.potSizeMm
          : potSizeMm // ignore: cast_nullable_to_non_nullable
              as int?,
      lastWatering: freezed == lastWatering
          ? _value.lastWatering
          : lastWatering // ignore: cast_nullable_to_non_nullable
              as String?,
      lastWateringExactDate: freezed == lastWateringExactDate
          ? _value.lastWateringExactDate
          : lastWateringExactDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastRepotting: freezed == lastRepotting
          ? _value.lastRepotting
          : lastRepotting // ignore: cast_nullable_to_non_nullable
              as String?,
      lastRepottingExactDate: freezed == lastRepottingExactDate
          ? _value.lastRepottingExactDate
          : lastRepottingExactDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GardenPlantModelImpl implements _GardenPlantModel {
  const _$GardenPlantModelImpl(
      {required this.id,
      @JsonKey(name: 'custom_name') required this.customName,
      @JsonKey(name: 'species_id') this.speciesId,
      @JsonKey(name: 'species_slug') this.speciesSlug,
      @JsonKey(name: 'species_latin_name') this.speciesLatinName,
      @JsonKey(name: 'room_id') this.roomId,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'sunlight_exposure') this.sunlightExposure,
      @JsonKey(name: 'plant_size') this.plantSize,
      @JsonKey(name: 'pot_size_mm') this.potSizeMm,
      @JsonKey(name: 'last_watering') this.lastWatering,
      @JsonKey(name: 'last_watering_exact_date') this.lastWateringExactDate,
      @JsonKey(name: 'last_repotting') this.lastRepotting,
      @JsonKey(name: 'last_repotting_exact_date') this.lastRepottingExactDate,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$GardenPlantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GardenPlantModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'custom_name')
  final String customName;
  @override
  @JsonKey(name: 'species_id')
  final int? speciesId;
  @override
  @JsonKey(name: 'species_slug')
  final String? speciesSlug;
  @override
  @JsonKey(name: 'species_latin_name')
  final String? speciesLatinName;
  @override
  @JsonKey(name: 'room_id')
  final int? roomId;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'sunlight_exposure')
  final String? sunlightExposure;
  @override
  @JsonKey(name: 'plant_size')
  final String? plantSize;
  @override
  @JsonKey(name: 'pot_size_mm')
  final int? potSizeMm;
  @override
  @JsonKey(name: 'last_watering')
  final String? lastWatering;
  @override
  @JsonKey(name: 'last_watering_exact_date')
  final String? lastWateringExactDate;
  @override
  @JsonKey(name: 'last_repotting')
  final String? lastRepotting;
  @override
  @JsonKey(name: 'last_repotting_exact_date')
  final String? lastRepottingExactDate;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'GardenPlantModel(id: $id, customName: $customName, speciesId: $speciesId, speciesSlug: $speciesSlug, speciesLatinName: $speciesLatinName, roomId: $roomId, imageUrl: $imageUrl, sunlightExposure: $sunlightExposure, plantSize: $plantSize, potSizeMm: $potSizeMm, lastWatering: $lastWatering, lastWateringExactDate: $lastWateringExactDate, lastRepotting: $lastRepotting, lastRepottingExactDate: $lastRepottingExactDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GardenPlantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customName, customName) ||
                other.customName == customName) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.speciesSlug, speciesSlug) ||
                other.speciesSlug == speciesSlug) &&
            (identical(other.speciesLatinName, speciesLatinName) ||
                other.speciesLatinName == speciesLatinName) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sunlightExposure, sunlightExposure) ||
                other.sunlightExposure == sunlightExposure) &&
            (identical(other.plantSize, plantSize) ||
                other.plantSize == plantSize) &&
            (identical(other.potSizeMm, potSizeMm) ||
                other.potSizeMm == potSizeMm) &&
            (identical(other.lastWatering, lastWatering) ||
                other.lastWatering == lastWatering) &&
            (identical(other.lastWateringExactDate, lastWateringExactDate) ||
                other.lastWateringExactDate == lastWateringExactDate) &&
            (identical(other.lastRepotting, lastRepotting) ||
                other.lastRepotting == lastRepotting) &&
            (identical(other.lastRepottingExactDate, lastRepottingExactDate) ||
                other.lastRepottingExactDate == lastRepottingExactDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customName,
      speciesId,
      speciesSlug,
      speciesLatinName,
      roomId,
      imageUrl,
      sunlightExposure,
      plantSize,
      potSizeMm,
      lastWatering,
      lastWateringExactDate,
      lastRepotting,
      lastRepottingExactDate,
      createdAt,
      updatedAt);

  /// Create a copy of GardenPlantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GardenPlantModelImplCopyWith<_$GardenPlantModelImpl> get copyWith =>
      __$$GardenPlantModelImplCopyWithImpl<_$GardenPlantModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GardenPlantModelImplToJson(
      this,
    );
  }
}

abstract class _GardenPlantModel implements GardenPlantModel {
  const factory _GardenPlantModel(
          {required final int id,
          @JsonKey(name: 'custom_name') required final String customName,
          @JsonKey(name: 'species_id') final int? speciesId,
          @JsonKey(name: 'species_slug') final String? speciesSlug,
          @JsonKey(name: 'species_latin_name') final String? speciesLatinName,
          @JsonKey(name: 'room_id') final int? roomId,
          @JsonKey(name: 'image_url') final String? imageUrl,
          @JsonKey(name: 'sunlight_exposure') final String? sunlightExposure,
          @JsonKey(name: 'plant_size') final String? plantSize,
          @JsonKey(name: 'pot_size_mm') final int? potSizeMm,
          @JsonKey(name: 'last_watering') final String? lastWatering,
          @JsonKey(name: 'last_watering_exact_date')
          final String? lastWateringExactDate,
          @JsonKey(name: 'last_repotting') final String? lastRepotting,
          @JsonKey(name: 'last_repotting_exact_date')
          final String? lastRepottingExactDate,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$GardenPlantModelImpl;

  factory _GardenPlantModel.fromJson(Map<String, dynamic> json) =
      _$GardenPlantModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'custom_name')
  String get customName;
  @override
  @JsonKey(name: 'species_id')
  int? get speciesId;
  @override
  @JsonKey(name: 'species_slug')
  String? get speciesSlug;
  @override
  @JsonKey(name: 'species_latin_name')
  String? get speciesLatinName;
  @override
  @JsonKey(name: 'room_id')
  int? get roomId;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'sunlight_exposure')
  String? get sunlightExposure;
  @override
  @JsonKey(name: 'plant_size')
  String? get plantSize;
  @override
  @JsonKey(name: 'pot_size_mm')
  int? get potSizeMm;
  @override
  @JsonKey(name: 'last_watering')
  String? get lastWatering;
  @override
  @JsonKey(name: 'last_watering_exact_date')
  String? get lastWateringExactDate;
  @override
  @JsonKey(name: 'last_repotting')
  String? get lastRepotting;
  @override
  @JsonKey(name: 'last_repotting_exact_date')
  String? get lastRepottingExactDate;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of GardenPlantModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GardenPlantModelImplCopyWith<_$GardenPlantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
