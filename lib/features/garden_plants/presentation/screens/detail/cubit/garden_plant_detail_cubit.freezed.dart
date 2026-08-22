// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garden_plant_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GardenPlantDetailState {
  Status get status => throw _privateConstructorUsedError;
  int? get plantId => throw _privateConstructorUsedError;
  String? get speciesSlug => throw _privateConstructorUsedError;
  GardenPlantModel? get plant => throw _privateConstructorUsedError;
  PlantDetailsModel? get speciesDetails => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get wasUpdated => throw _privateConstructorUsedError;
  bool get wasDeleted => throw _privateConstructorUsedError;

  /// Create a copy of GardenPlantDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GardenPlantDetailStateCopyWith<GardenPlantDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GardenPlantDetailStateCopyWith<$Res> {
  factory $GardenPlantDetailStateCopyWith(
    GardenPlantDetailState value,
    $Res Function(GardenPlantDetailState) then,
  ) = _$GardenPlantDetailStateCopyWithImpl<$Res, GardenPlantDetailState>;
  @useResult
  $Res call({
    Status status,
    int? plantId,
    String? speciesSlug,
    GardenPlantModel? plant,
    PlantDetailsModel? speciesDetails,
    Object? error,
    bool isSaving,
    bool wasUpdated,
    bool wasDeleted,
  });

  $GardenPlantModelCopyWith<$Res>? get plant;
  $PlantDetailsModelCopyWith<$Res>? get speciesDetails;
}

/// @nodoc
class _$GardenPlantDetailStateCopyWithImpl<
  $Res,
  $Val extends GardenPlantDetailState
>
    implements $GardenPlantDetailStateCopyWith<$Res> {
  _$GardenPlantDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GardenPlantDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? plantId = freezed,
    Object? speciesSlug = freezed,
    Object? plant = freezed,
    Object? speciesDetails = freezed,
    Object? error = freezed,
    Object? isSaving = null,
    Object? wasUpdated = null,
    Object? wasDeleted = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            plantId: freezed == plantId
                ? _value.plantId
                : plantId // ignore: cast_nullable_to_non_nullable
                      as int?,
            speciesSlug: freezed == speciesSlug
                ? _value.speciesSlug
                : speciesSlug // ignore: cast_nullable_to_non_nullable
                      as String?,
            plant: freezed == plant
                ? _value.plant
                : plant // ignore: cast_nullable_to_non_nullable
                      as GardenPlantModel?,
            speciesDetails: freezed == speciesDetails
                ? _value.speciesDetails
                : speciesDetails // ignore: cast_nullable_to_non_nullable
                      as PlantDetailsModel?,
            error: freezed == error ? _value.error : error,
            isSaving: null == isSaving
                ? _value.isSaving
                : isSaving // ignore: cast_nullable_to_non_nullable
                      as bool,
            wasUpdated: null == wasUpdated
                ? _value.wasUpdated
                : wasUpdated // ignore: cast_nullable_to_non_nullable
                      as bool,
            wasDeleted: null == wasDeleted
                ? _value.wasDeleted
                : wasDeleted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of GardenPlantDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GardenPlantModelCopyWith<$Res>? get plant {
    if (_value.plant == null) {
      return null;
    }

    return $GardenPlantModelCopyWith<$Res>(_value.plant!, (value) {
      return _then(_value.copyWith(plant: value) as $Val);
    });
  }

  /// Create a copy of GardenPlantDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlantDetailsModelCopyWith<$Res>? get speciesDetails {
    if (_value.speciesDetails == null) {
      return null;
    }

    return $PlantDetailsModelCopyWith<$Res>(_value.speciesDetails!, (value) {
      return _then(_value.copyWith(speciesDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GardenPlantDetailStateImplCopyWith<$Res>
    implements $GardenPlantDetailStateCopyWith<$Res> {
  factory _$$GardenPlantDetailStateImplCopyWith(
    _$GardenPlantDetailStateImpl value,
    $Res Function(_$GardenPlantDetailStateImpl) then,
  ) = __$$GardenPlantDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    int? plantId,
    String? speciesSlug,
    GardenPlantModel? plant,
    PlantDetailsModel? speciesDetails,
    Object? error,
    bool isSaving,
    bool wasUpdated,
    bool wasDeleted,
  });

  @override
  $GardenPlantModelCopyWith<$Res>? get plant;
  @override
  $PlantDetailsModelCopyWith<$Res>? get speciesDetails;
}

/// @nodoc
class __$$GardenPlantDetailStateImplCopyWithImpl<$Res>
    extends
        _$GardenPlantDetailStateCopyWithImpl<$Res, _$GardenPlantDetailStateImpl>
    implements _$$GardenPlantDetailStateImplCopyWith<$Res> {
  __$$GardenPlantDetailStateImplCopyWithImpl(
    _$GardenPlantDetailStateImpl _value,
    $Res Function(_$GardenPlantDetailStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GardenPlantDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? plantId = freezed,
    Object? speciesSlug = freezed,
    Object? plant = freezed,
    Object? speciesDetails = freezed,
    Object? error = freezed,
    Object? isSaving = null,
    Object? wasUpdated = null,
    Object? wasDeleted = null,
  }) {
    return _then(
      _$GardenPlantDetailStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        plantId: freezed == plantId
            ? _value.plantId
            : plantId // ignore: cast_nullable_to_non_nullable
                  as int?,
        speciesSlug: freezed == speciesSlug
            ? _value.speciesSlug
            : speciesSlug // ignore: cast_nullable_to_non_nullable
                  as String?,
        plant: freezed == plant
            ? _value.plant
            : plant // ignore: cast_nullable_to_non_nullable
                  as GardenPlantModel?,
        speciesDetails: freezed == speciesDetails
            ? _value.speciesDetails
            : speciesDetails // ignore: cast_nullable_to_non_nullable
                  as PlantDetailsModel?,
        error: freezed == error ? _value.error : error,
        isSaving: null == isSaving
            ? _value.isSaving
            : isSaving // ignore: cast_nullable_to_non_nullable
                  as bool,
        wasUpdated: null == wasUpdated
            ? _value.wasUpdated
            : wasUpdated // ignore: cast_nullable_to_non_nullable
                  as bool,
        wasDeleted: null == wasDeleted
            ? _value.wasDeleted
            : wasDeleted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$GardenPlantDetailStateImpl implements _GardenPlantDetailState {
  const _$GardenPlantDetailStateImpl({
    required this.status,
    this.plantId,
    this.speciesSlug,
    this.plant,
    this.speciesDetails,
    this.error,
    this.isSaving = false,
    this.wasUpdated = false,
    this.wasDeleted = false,
  });

  @override
  final Status status;
  @override
  final int? plantId;
  @override
  final String? speciesSlug;
  @override
  final GardenPlantModel? plant;
  @override
  final PlantDetailsModel? speciesDetails;
  @override
  final Object? error;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  @JsonKey()
  final bool wasUpdated;
  @override
  @JsonKey()
  final bool wasDeleted;

  @override
  String toString() {
    return 'GardenPlantDetailState(status: $status, plantId: $plantId, speciesSlug: $speciesSlug, plant: $plant, speciesDetails: $speciesDetails, error: $error, isSaving: $isSaving, wasUpdated: $wasUpdated, wasDeleted: $wasDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GardenPlantDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.speciesSlug, speciesSlug) ||
                other.speciesSlug == speciesSlug) &&
            (identical(other.plant, plant) || other.plant == plant) &&
            (identical(other.speciesDetails, speciesDetails) ||
                other.speciesDetails == speciesDetails) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.wasUpdated, wasUpdated) ||
                other.wasUpdated == wasUpdated) &&
            (identical(other.wasDeleted, wasDeleted) ||
                other.wasDeleted == wasDeleted));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    plantId,
    speciesSlug,
    plant,
    speciesDetails,
    const DeepCollectionEquality().hash(error),
    isSaving,
    wasUpdated,
    wasDeleted,
  );

  /// Create a copy of GardenPlantDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GardenPlantDetailStateImplCopyWith<_$GardenPlantDetailStateImpl>
  get copyWith =>
      __$$GardenPlantDetailStateImplCopyWithImpl<_$GardenPlantDetailStateImpl>(
        this,
        _$identity,
      );
}

abstract class _GardenPlantDetailState implements GardenPlantDetailState {
  const factory _GardenPlantDetailState({
    required final Status status,
    final int? plantId,
    final String? speciesSlug,
    final GardenPlantModel? plant,
    final PlantDetailsModel? speciesDetails,
    final Object? error,
    final bool isSaving,
    final bool wasUpdated,
    final bool wasDeleted,
  }) = _$GardenPlantDetailStateImpl;

  @override
  Status get status;
  @override
  int? get plantId;
  @override
  String? get speciesSlug;
  @override
  GardenPlantModel? get plant;
  @override
  PlantDetailsModel? get speciesDetails;
  @override
  Object? get error;
  @override
  bool get isSaving;
  @override
  bool get wasUpdated;
  @override
  bool get wasDeleted;

  /// Create a copy of GardenPlantDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GardenPlantDetailStateImplCopyWith<_$GardenPlantDetailStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
