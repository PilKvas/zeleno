// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordResetRequestModel _$PasswordResetRequestModelFromJson(
    Map<String, dynamic> json) {
  return _PasswordResetRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PasswordResetRequestModel {
  String get email => throw _privateConstructorUsedError;

  /// Serializes this PasswordResetRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordResetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordResetRequestModelCopyWith<PasswordResetRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetRequestModelCopyWith<$Res> {
  factory $PasswordResetRequestModelCopyWith(PasswordResetRequestModel value,
          $Res Function(PasswordResetRequestModel) then) =
      _$PasswordResetRequestModelCopyWithImpl<$Res, PasswordResetRequestModel>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$PasswordResetRequestModelCopyWithImpl<$Res,
        $Val extends PasswordResetRequestModel>
    implements $PasswordResetRequestModelCopyWith<$Res> {
  _$PasswordResetRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordResetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordResetRequestModelImplCopyWith<$Res>
    implements $PasswordResetRequestModelCopyWith<$Res> {
  factory _$$PasswordResetRequestModelImplCopyWith(
          _$PasswordResetRequestModelImpl value,
          $Res Function(_$PasswordResetRequestModelImpl) then) =
      __$$PasswordResetRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$PasswordResetRequestModelImplCopyWithImpl<$Res>
    extends _$PasswordResetRequestModelCopyWithImpl<$Res,
        _$PasswordResetRequestModelImpl>
    implements _$$PasswordResetRequestModelImplCopyWith<$Res> {
  __$$PasswordResetRequestModelImplCopyWithImpl(
      _$PasswordResetRequestModelImpl _value,
      $Res Function(_$PasswordResetRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordResetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$PasswordResetRequestModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordResetRequestModelImpl implements _PasswordResetRequestModel {
  const _$PasswordResetRequestModelImpl({required this.email});

  factory _$PasswordResetRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordResetRequestModelImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'PasswordResetRequestModel(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetRequestModelImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of PasswordResetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetRequestModelImplCopyWith<_$PasswordResetRequestModelImpl>
      get copyWith => __$$PasswordResetRequestModelImplCopyWithImpl<
          _$PasswordResetRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordResetRequestModelImplToJson(
      this,
    );
  }
}

abstract class _PasswordResetRequestModel implements PasswordResetRequestModel {
  const factory _PasswordResetRequestModel({required final String email}) =
      _$PasswordResetRequestModelImpl;

  factory _PasswordResetRequestModel.fromJson(Map<String, dynamic> json) =
      _$PasswordResetRequestModelImpl.fromJson;

  @override
  String get email;

  /// Create a copy of PasswordResetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordResetRequestModelImplCopyWith<_$PasswordResetRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
