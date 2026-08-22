// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_verify_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PasswordResetVerifyState {
  Status get status => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of PasswordResetVerifyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordResetVerifyStateCopyWith<PasswordResetVerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetVerifyStateCopyWith<$Res> {
  factory $PasswordResetVerifyStateCopyWith(
    PasswordResetVerifyState value,
    $Res Function(PasswordResetVerifyState) then,
  ) = _$PasswordResetVerifyStateCopyWithImpl<$Res, PasswordResetVerifyState>;
  @useResult
  $Res call({Status status, String? token, Object? error});
}

/// @nodoc
class _$PasswordResetVerifyStateCopyWithImpl<
  $Res,
  $Val extends PasswordResetVerifyState
>
    implements $PasswordResetVerifyStateCopyWith<$Res> {
  _$PasswordResetVerifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordResetVerifyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? token = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            token: freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String?,
            error: freezed == error ? _value.error : error,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordResetVerifyStateImplCopyWith<$Res>
    implements $PasswordResetVerifyStateCopyWith<$Res> {
  factory _$$PasswordResetVerifyStateImplCopyWith(
    _$PasswordResetVerifyStateImpl value,
    $Res Function(_$PasswordResetVerifyStateImpl) then,
  ) = __$$PasswordResetVerifyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, String? token, Object? error});
}

/// @nodoc
class __$$PasswordResetVerifyStateImplCopyWithImpl<$Res>
    extends
        _$PasswordResetVerifyStateCopyWithImpl<
          $Res,
          _$PasswordResetVerifyStateImpl
        >
    implements _$$PasswordResetVerifyStateImplCopyWith<$Res> {
  __$$PasswordResetVerifyStateImplCopyWithImpl(
    _$PasswordResetVerifyStateImpl _value,
    $Res Function(_$PasswordResetVerifyStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordResetVerifyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? token = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$PasswordResetVerifyStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        token: freezed == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String?,
        error: freezed == error ? _value.error : error,
      ),
    );
  }
}

/// @nodoc

class _$PasswordResetVerifyStateImpl implements _PasswordResetVerifyState {
  const _$PasswordResetVerifyStateImpl({
    required this.status,
    this.token,
    this.error,
  });

  @override
  final Status status;
  @override
  final String? token;
  @override
  final Object? error;

  @override
  String toString() {
    return 'PasswordResetVerifyState(status: $status, token: $token, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetVerifyStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    token,
    const DeepCollectionEquality().hash(error),
  );

  /// Create a copy of PasswordResetVerifyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetVerifyStateImplCopyWith<_$PasswordResetVerifyStateImpl>
  get copyWith =>
      __$$PasswordResetVerifyStateImplCopyWithImpl<
        _$PasswordResetVerifyStateImpl
      >(this, _$identity);
}

abstract class _PasswordResetVerifyState implements PasswordResetVerifyState {
  const factory _PasswordResetVerifyState({
    required final Status status,
    final String? token,
    final Object? error,
  }) = _$PasswordResetVerifyStateImpl;

  @override
  Status get status;
  @override
  String? get token;
  @override
  Object? get error;

  /// Create a copy of PasswordResetVerifyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordResetVerifyStateImplCopyWith<_$PasswordResetVerifyStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
