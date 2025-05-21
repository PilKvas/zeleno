// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlantDetailsState {
  Status get status => throw _privateConstructorUsedError;
  PlantDetailsModel? get plantDetails => throw _privateConstructorUsedError;

  /// Create a copy of PlantDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantDetailsStateCopyWith<PlantDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantDetailsStateCopyWith<$Res> {
  factory $PlantDetailsStateCopyWith(
          PlantDetailsState value, $Res Function(PlantDetailsState) then) =
      _$PlantDetailsStateCopyWithImpl<$Res, PlantDetailsState>;
  @useResult
  $Res call({Status status, PlantDetailsModel? plantDetails});

  $PlantDetailsModelCopyWith<$Res>? get plantDetails;
}

/// @nodoc
class _$PlantDetailsStateCopyWithImpl<$Res, $Val extends PlantDetailsState>
    implements $PlantDetailsStateCopyWith<$Res> {
  _$PlantDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? plantDetails = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      plantDetails: freezed == plantDetails
          ? _value.plantDetails
          : plantDetails // ignore: cast_nullable_to_non_nullable
              as PlantDetailsModel?,
    ) as $Val);
  }

  /// Create a copy of PlantDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlantDetailsModelCopyWith<$Res>? get plantDetails {
    if (_value.plantDetails == null) {
      return null;
    }

    return $PlantDetailsModelCopyWith<$Res>(_value.plantDetails!, (value) {
      return _then(_value.copyWith(plantDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlantDetailsStateImplCopyWith<$Res>
    implements $PlantDetailsStateCopyWith<$Res> {
  factory _$$PlantDetailsStateImplCopyWith(_$PlantDetailsStateImpl value,
          $Res Function(_$PlantDetailsStateImpl) then) =
      __$$PlantDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, PlantDetailsModel? plantDetails});

  @override
  $PlantDetailsModelCopyWith<$Res>? get plantDetails;
}

/// @nodoc
class __$$PlantDetailsStateImplCopyWithImpl<$Res>
    extends _$PlantDetailsStateCopyWithImpl<$Res, _$PlantDetailsStateImpl>
    implements _$$PlantDetailsStateImplCopyWith<$Res> {
  __$$PlantDetailsStateImplCopyWithImpl(_$PlantDetailsStateImpl _value,
      $Res Function(_$PlantDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? plantDetails = freezed,
  }) {
    return _then(_$PlantDetailsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      plantDetails: freezed == plantDetails
          ? _value.plantDetails
          : plantDetails // ignore: cast_nullable_to_non_nullable
              as PlantDetailsModel?,
    ));
  }
}

/// @nodoc

class _$PlantDetailsStateImpl implements _PlantDetailsState {
  const _$PlantDetailsStateImpl({required this.status, this.plantDetails});

  @override
  final Status status;
  @override
  final PlantDetailsModel? plantDetails;

  @override
  String toString() {
    return 'PlantDetailsState(status: $status, plantDetails: $plantDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.plantDetails, plantDetails) ||
                other.plantDetails == plantDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, plantDetails);

  /// Create a copy of PlantDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantDetailsStateImplCopyWith<_$PlantDetailsStateImpl> get copyWith =>
      __$$PlantDetailsStateImplCopyWithImpl<_$PlantDetailsStateImpl>(
          this, _$identity);
}

abstract class _PlantDetailsState implements PlantDetailsState {
  const factory _PlantDetailsState(
      {required final Status status,
      final PlantDetailsModel? plantDetails}) = _$PlantDetailsStateImpl;

  @override
  Status get status;
  @override
  PlantDetailsModel? get plantDetails;

  /// Create a copy of PlantDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantDetailsStateImplCopyWith<_$PlantDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
