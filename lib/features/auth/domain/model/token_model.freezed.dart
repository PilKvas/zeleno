// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenModel _$TokenModelFromJson(Map<String, dynamic> json) {
  return _TokenModel.fromJson(json);
}

/// @nodoc
mixin _$TokenModel {
  String get refresh => throw _privateConstructorUsedError;
  String? get access => throw _privateConstructorUsedError;

  /// Serializes this TokenModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenModelCopyWith<TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenModelCopyWith<$Res> {
  factory $TokenModelCopyWith(
          TokenModel value, $Res Function(TokenModel) then) =
      _$TokenModelCopyWithImpl<$Res, TokenModel>;
  @useResult
  $Res call({String refresh, String? access});
}

/// @nodoc
class _$TokenModelCopyWithImpl<$Res, $Val extends TokenModel>
    implements $TokenModelCopyWith<$Res> {
  _$TokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? access = freezed,
  }) {
    return _then(_value.copyWith(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenModelImplCopyWith<$Res>
    implements $TokenModelCopyWith<$Res> {
  factory _$$TokenModelImplCopyWith(
          _$TokenModelImpl value, $Res Function(_$TokenModelImpl) then) =
      __$$TokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refresh, String? access});
}

/// @nodoc
class __$$TokenModelImplCopyWithImpl<$Res>
    extends _$TokenModelCopyWithImpl<$Res, _$TokenModelImpl>
    implements _$$TokenModelImplCopyWith<$Res> {
  __$$TokenModelImplCopyWithImpl(
      _$TokenModelImpl _value, $Res Function(_$TokenModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? access = freezed,
  }) {
    return _then(_$TokenModelImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenModelImpl implements _TokenModel {
  const _$TokenModelImpl({required this.refresh, this.access});

  factory _$TokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenModelImplFromJson(json);

  @override
  final String refresh;
  @override
  final String? access;

  @override
  String toString() {
    return 'TokenModel(refresh: $refresh, access: $access)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenModelImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.access, access) || other.access == access));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refresh, access);

  /// Create a copy of TokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenModelImplCopyWith<_$TokenModelImpl> get copyWith =>
      __$$TokenModelImplCopyWithImpl<_$TokenModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenModelImplToJson(
      this,
    );
  }
}

abstract class _TokenModel implements TokenModel {
  const factory _TokenModel(
      {required final String refresh, final String? access}) = _$TokenModelImpl;

  factory _TokenModel.fromJson(Map<String, dynamic> json) =
      _$TokenModelImpl.fromJson;

  @override
  String get refresh;
  @override
  String? get access;

  /// Create a copy of TokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenModelImplCopyWith<_$TokenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
