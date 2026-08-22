// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PasswordResetRequestState {
  Status get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of PasswordResetRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordResetRequestStateCopyWith<PasswordResetRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetRequestStateCopyWith<$Res> {
  factory $PasswordResetRequestStateCopyWith(
    PasswordResetRequestState value,
    $Res Function(PasswordResetRequestState) then,
  ) = _$PasswordResetRequestStateCopyWithImpl<$Res, PasswordResetRequestState>;
  @useResult
  $Res call({Status status, Object? error});
}

/// @nodoc
class _$PasswordResetRequestStateCopyWithImpl<
  $Res,
  $Val extends PasswordResetRequestState
>
    implements $PasswordResetRequestStateCopyWith<$Res> {
  _$PasswordResetRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordResetRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? error = freezed}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            error: freezed == error ? _value.error : error,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordResetRequestStateImplCopyWith<$Res>
    implements $PasswordResetRequestStateCopyWith<$Res> {
  factory _$$PasswordResetRequestStateImplCopyWith(
    _$PasswordResetRequestStateImpl value,
    $Res Function(_$PasswordResetRequestStateImpl) then,
  ) = __$$PasswordResetRequestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, Object? error});
}

/// @nodoc
class __$$PasswordResetRequestStateImplCopyWithImpl<$Res>
    extends
        _$PasswordResetRequestStateCopyWithImpl<
          $Res,
          _$PasswordResetRequestStateImpl
        >
    implements _$$PasswordResetRequestStateImplCopyWith<$Res> {
  __$$PasswordResetRequestStateImplCopyWithImpl(
    _$PasswordResetRequestStateImpl _value,
    $Res Function(_$PasswordResetRequestStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordResetRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? error = freezed}) {
    return _then(
      _$PasswordResetRequestStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        error: freezed == error ? _value.error : error,
      ),
    );
  }
}

/// @nodoc

class _$PasswordResetRequestStateImpl implements _PasswordResetRequestState {
  const _$PasswordResetRequestStateImpl({required this.status, this.error});

  @override
  final Status status;
  @override
  final Object? error;

  @override
  String toString() {
    return 'PasswordResetRequestState(status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetRequestStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(error),
  );

  /// Create a copy of PasswordResetRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetRequestStateImplCopyWith<_$PasswordResetRequestStateImpl>
  get copyWith =>
      __$$PasswordResetRequestStateImplCopyWithImpl<
        _$PasswordResetRequestStateImpl
      >(this, _$identity);
}

abstract class _PasswordResetRequestState implements PasswordResetRequestState {
  const factory _PasswordResetRequestState({
    required final Status status,
    final Object? error,
  }) = _$PasswordResetRequestStateImpl;

  @override
  Status get status;
  @override
  Object? get error;

  /// Create a copy of PasswordResetRequestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordResetRequestStateImplCopyWith<_$PasswordResetRequestStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
