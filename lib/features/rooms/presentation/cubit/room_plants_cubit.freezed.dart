// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_plants_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomPlantsState {
  Status get status => throw _privateConstructorUsedError;
  List<GardenPlantsResponse> get plants => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of RoomPlantsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomPlantsStateCopyWith<RoomPlantsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomPlantsStateCopyWith<$Res> {
  factory $RoomPlantsStateCopyWith(
          RoomPlantsState value, $Res Function(RoomPlantsState) then) =
      _$RoomPlantsStateCopyWithImpl<$Res, RoomPlantsState>;
  @useResult
  $Res call(
      {Status status, List<GardenPlantsResponse> plants, String? errorMessage});
}

/// @nodoc
class _$RoomPlantsStateCopyWithImpl<$Res, $Val extends RoomPlantsState>
    implements $RoomPlantsStateCopyWith<$Res> {
  _$RoomPlantsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomPlantsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? plants = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      plants: null == plants
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<GardenPlantsResponse>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomPlantsStateImplCopyWith<$Res>
    implements $RoomPlantsStateCopyWith<$Res> {
  factory _$$RoomPlantsStateImplCopyWith(_$RoomPlantsStateImpl value,
          $Res Function(_$RoomPlantsStateImpl) then) =
      __$$RoomPlantsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status, List<GardenPlantsResponse> plants, String? errorMessage});
}

/// @nodoc
class __$$RoomPlantsStateImplCopyWithImpl<$Res>
    extends _$RoomPlantsStateCopyWithImpl<$Res, _$RoomPlantsStateImpl>
    implements _$$RoomPlantsStateImplCopyWith<$Res> {
  __$$RoomPlantsStateImplCopyWithImpl(
      _$RoomPlantsStateImpl _value, $Res Function(_$RoomPlantsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomPlantsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? plants = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RoomPlantsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      plants: null == plants
          ? _value._plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<GardenPlantsResponse>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RoomPlantsStateImpl implements _RoomPlantsState {
  const _$RoomPlantsStateImpl(
      {required this.status,
      final List<GardenPlantsResponse> plants = const [],
      this.errorMessage})
      : _plants = plants;

  @override
  final Status status;
  final List<GardenPlantsResponse> _plants;
  @override
  @JsonKey()
  List<GardenPlantsResponse> get plants {
    if (_plants is EqualUnmodifiableListView) return _plants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plants);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RoomPlantsState(status: $status, plants: $plants, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomPlantsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._plants, _plants) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_plants), errorMessage);

  /// Create a copy of RoomPlantsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomPlantsStateImplCopyWith<_$RoomPlantsStateImpl> get copyWith =>
      __$$RoomPlantsStateImplCopyWithImpl<_$RoomPlantsStateImpl>(
          this, _$identity);
}

abstract class _RoomPlantsState implements RoomPlantsState {
  const factory _RoomPlantsState(
      {required final Status status,
      final List<GardenPlantsResponse> plants,
      final String? errorMessage}) = _$RoomPlantsStateImpl;

  @override
  Status get status;
  @override
  List<GardenPlantsResponse> get plants;
  @override
  String? get errorMessage;

  /// Create a copy of RoomPlantsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomPlantsStateImplCopyWith<_$RoomPlantsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
