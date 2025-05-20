// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomsState {
  Status get status => throw _privateConstructorUsedError;
  List<RoomModel> get rooms => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomsStateCopyWith<RoomsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsStateCopyWith<$Res> {
  factory $RoomsStateCopyWith(
          RoomsState value, $Res Function(RoomsState) then) =
      _$RoomsStateCopyWithImpl<$Res, RoomsState>;
  @useResult
  $Res call({Status status, List<RoomModel> rooms, String? errorMessage});
}

/// @nodoc
class _$RoomsStateCopyWithImpl<$Res, $Val extends RoomsState>
    implements $RoomsStateCopyWith<$Res> {
  _$RoomsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rooms = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomsStateImplCopyWith<$Res>
    implements $RoomsStateCopyWith<$Res> {
  factory _$$RoomsStateImplCopyWith(
          _$RoomsStateImpl value, $Res Function(_$RoomsStateImpl) then) =
      __$$RoomsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<RoomModel> rooms, String? errorMessage});
}

/// @nodoc
class __$$RoomsStateImplCopyWithImpl<$Res>
    extends _$RoomsStateCopyWithImpl<$Res, _$RoomsStateImpl>
    implements _$$RoomsStateImplCopyWith<$Res> {
  __$$RoomsStateImplCopyWithImpl(
      _$RoomsStateImpl _value, $Res Function(_$RoomsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rooms = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RoomsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RoomsStateImpl implements _RoomsState {
  const _$RoomsStateImpl(
      {required this.status,
      final List<RoomModel> rooms = const [],
      this.errorMessage})
      : _rooms = rooms;

  @override
  final Status status;
  final List<RoomModel> _rooms;
  @override
  @JsonKey()
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RoomsState(status: $status, rooms: $rooms, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_rooms), errorMessage);

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsStateImplCopyWith<_$RoomsStateImpl> get copyWith =>
      __$$RoomsStateImplCopyWithImpl<_$RoomsStateImpl>(this, _$identity);
}

abstract class _RoomsState implements RoomsState {
  const factory _RoomsState(
      {required final Status status,
      final List<RoomModel> rooms,
      final String? errorMessage}) = _$RoomsStateImpl;

  @override
  Status get status;
  @override
  List<RoomModel> get rooms;
  @override
  String? get errorMessage;

  /// Create a copy of RoomsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomsStateImplCopyWith<_$RoomsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
