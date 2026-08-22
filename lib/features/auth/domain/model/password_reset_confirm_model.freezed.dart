// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_confirm_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PasswordResetConfirmModel _$PasswordResetConfirmModelFromJson(
  Map<String, dynamic> json,
) {
  return _PasswordResetConfirmModel.fromJson(json);
}

/// @nodoc
mixin _$PasswordResetConfirmModel {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this PasswordResetConfirmModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordResetConfirmModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordResetConfirmModelCopyWith<PasswordResetConfirmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetConfirmModelCopyWith<$Res> {
  factory $PasswordResetConfirmModelCopyWith(
    PasswordResetConfirmModel value,
    $Res Function(PasswordResetConfirmModel) then,
  ) = _$PasswordResetConfirmModelCopyWithImpl<$Res, PasswordResetConfirmModel>;
  @useResult
  $Res call({String token, @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class _$PasswordResetConfirmModelCopyWithImpl<
  $Res,
  $Val extends PasswordResetConfirmModel
>
    implements $PasswordResetConfirmModelCopyWith<$Res> {
  _$PasswordResetConfirmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordResetConfirmModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? newPassword = null}) {
    return _then(
      _value.copyWith(
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
            newPassword: null == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordResetConfirmModelImplCopyWith<$Res>
    implements $PasswordResetConfirmModelCopyWith<$Res> {
  factory _$$PasswordResetConfirmModelImplCopyWith(
    _$PasswordResetConfirmModelImpl value,
    $Res Function(_$PasswordResetConfirmModelImpl) then,
  ) = __$$PasswordResetConfirmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class __$$PasswordResetConfirmModelImplCopyWithImpl<$Res>
    extends
        _$PasswordResetConfirmModelCopyWithImpl<
          $Res,
          _$PasswordResetConfirmModelImpl
        >
    implements _$$PasswordResetConfirmModelImplCopyWith<$Res> {
  __$$PasswordResetConfirmModelImplCopyWithImpl(
    _$PasswordResetConfirmModelImpl _value,
    $Res Function(_$PasswordResetConfirmModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordResetConfirmModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? newPassword = null}) {
    return _then(
      _$PasswordResetConfirmModelImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
        newPassword: null == newPassword
            ? _value.newPassword
            : newPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordResetConfirmModelImpl implements _PasswordResetConfirmModel {
  const _$PasswordResetConfirmModelImpl({
    required this.token,
    @JsonKey(name: 'new_password') required this.newPassword,
  });

  factory _$PasswordResetConfirmModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordResetConfirmModelImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;

  @override
  String toString() {
    return 'PasswordResetConfirmModel(token: $token, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetConfirmModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, newPassword);

  /// Create a copy of PasswordResetConfirmModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetConfirmModelImplCopyWith<_$PasswordResetConfirmModelImpl>
  get copyWith =>
      __$$PasswordResetConfirmModelImplCopyWithImpl<
        _$PasswordResetConfirmModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordResetConfirmModelImplToJson(this);
  }
}

abstract class _PasswordResetConfirmModel implements PasswordResetConfirmModel {
  const factory _PasswordResetConfirmModel({
    required final String token,
    @JsonKey(name: 'new_password') required final String newPassword,
  }) = _$PasswordResetConfirmModelImpl;

  factory _PasswordResetConfirmModel.fromJson(Map<String, dynamic> json) =
      _$PasswordResetConfirmModelImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;

  /// Create a copy of PasswordResetConfirmModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordResetConfirmModelImplCopyWith<_$PasswordResetConfirmModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
