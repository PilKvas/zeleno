// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_verify_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PasswordResetVerifyModel _$PasswordResetVerifyModelFromJson(
  Map<String, dynamic> json,
) {
  return _PasswordResetVerifyModel.fromJson(json);
}

/// @nodoc
mixin _$PasswordResetVerifyModel {
  String get email => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;

  /// Serializes this PasswordResetVerifyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordResetVerifyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordResetVerifyModelCopyWith<PasswordResetVerifyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetVerifyModelCopyWith<$Res> {
  factory $PasswordResetVerifyModelCopyWith(
    PasswordResetVerifyModel value,
    $Res Function(PasswordResetVerifyModel) then,
  ) = _$PasswordResetVerifyModelCopyWithImpl<$Res, PasswordResetVerifyModel>;
  @useResult
  $Res call({String email, String otp});
}

/// @nodoc
class _$PasswordResetVerifyModelCopyWithImpl<
  $Res,
  $Val extends PasswordResetVerifyModel
>
    implements $PasswordResetVerifyModelCopyWith<$Res> {
  _$PasswordResetVerifyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordResetVerifyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? otp = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            otp: null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordResetVerifyModelImplCopyWith<$Res>
    implements $PasswordResetVerifyModelCopyWith<$Res> {
  factory _$$PasswordResetVerifyModelImplCopyWith(
    _$PasswordResetVerifyModelImpl value,
    $Res Function(_$PasswordResetVerifyModelImpl) then,
  ) = __$$PasswordResetVerifyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String otp});
}

/// @nodoc
class __$$PasswordResetVerifyModelImplCopyWithImpl<$Res>
    extends
        _$PasswordResetVerifyModelCopyWithImpl<
          $Res,
          _$PasswordResetVerifyModelImpl
        >
    implements _$$PasswordResetVerifyModelImplCopyWith<$Res> {
  __$$PasswordResetVerifyModelImplCopyWithImpl(
    _$PasswordResetVerifyModelImpl _value,
    $Res Function(_$PasswordResetVerifyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordResetVerifyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? otp = null}) {
    return _then(
      _$PasswordResetVerifyModelImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        otp: null == otp
            ? _value.otp
            : otp // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordResetVerifyModelImpl implements _PasswordResetVerifyModel {
  const _$PasswordResetVerifyModelImpl({
    required this.email,
    required this.otp,
  });

  factory _$PasswordResetVerifyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordResetVerifyModelImplFromJson(json);

  @override
  final String email;
  @override
  final String otp;

  @override
  String toString() {
    return 'PasswordResetVerifyModel(email: $email, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetVerifyModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, otp);

  /// Create a copy of PasswordResetVerifyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetVerifyModelImplCopyWith<_$PasswordResetVerifyModelImpl>
  get copyWith =>
      __$$PasswordResetVerifyModelImplCopyWithImpl<
        _$PasswordResetVerifyModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordResetVerifyModelImplToJson(this);
  }
}

abstract class _PasswordResetVerifyModel implements PasswordResetVerifyModel {
  const factory _PasswordResetVerifyModel({
    required final String email,
    required final String otp,
  }) = _$PasswordResetVerifyModelImpl;

  factory _PasswordResetVerifyModel.fromJson(Map<String, dynamic> json) =
      _$PasswordResetVerifyModelImpl.fromJson;

  @override
  String get email;
  @override
  String get otp;

  /// Create a copy of PasswordResetVerifyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordResetVerifyModelImplCopyWith<_$PasswordResetVerifyModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
