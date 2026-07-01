// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_garden_plant_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateGardenPlantBody _$CreateGardenPlantBodyFromJson(
    Map<String, dynamic> json) {
  return _CreateGardenPlantBody.fromJson(json);
}

/// @nodoc
mixin _$CreateGardenPlantBody {
  @JsonKey(name: 'species_id')
  int get speciesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_name')
  String get customName => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  int? get roomId => throw _privateConstructorUsedError;

  /// Serializes this CreateGardenPlantBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateGardenPlantBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGardenPlantBodyCopyWith<CreateGardenPlantBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGardenPlantBodyCopyWith<$Res> {
  factory $CreateGardenPlantBodyCopyWith(CreateGardenPlantBody value,
          $Res Function(CreateGardenPlantBody) then) =
      _$CreateGardenPlantBodyCopyWithImpl<$Res, CreateGardenPlantBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'species_id') int speciesId,
      @JsonKey(name: 'custom_name') String customName,
      @JsonKey(name: 'room_id') int? roomId});
}

/// @nodoc
class _$CreateGardenPlantBodyCopyWithImpl<$Res,
        $Val extends CreateGardenPlantBody>
    implements $CreateGardenPlantBodyCopyWith<$Res> {
  _$CreateGardenPlantBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGardenPlantBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speciesId = null,
    Object? customName = null,
    Object? roomId = freezed,
  }) {
    return _then(_value.copyWith(
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as int,
      customName: null == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateGardenPlantBodyImplCopyWith<$Res>
    implements $CreateGardenPlantBodyCopyWith<$Res> {
  factory _$$CreateGardenPlantBodyImplCopyWith(
          _$CreateGardenPlantBodyImpl value,
          $Res Function(_$CreateGardenPlantBodyImpl) then) =
      __$$CreateGardenPlantBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'species_id') int speciesId,
      @JsonKey(name: 'custom_name') String customName,
      @JsonKey(name: 'room_id') int? roomId});
}

/// @nodoc
class __$$CreateGardenPlantBodyImplCopyWithImpl<$Res>
    extends _$CreateGardenPlantBodyCopyWithImpl<$Res,
        _$CreateGardenPlantBodyImpl>
    implements _$$CreateGardenPlantBodyImplCopyWith<$Res> {
  __$$CreateGardenPlantBodyImplCopyWithImpl(_$CreateGardenPlantBodyImpl _value,
      $Res Function(_$CreateGardenPlantBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateGardenPlantBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speciesId = null,
    Object? customName = null,
    Object? roomId = freezed,
  }) {
    return _then(_$CreateGardenPlantBodyImpl(
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as int,
      customName: null == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGardenPlantBodyImpl implements _CreateGardenPlantBody {
  const _$CreateGardenPlantBodyImpl(
      {@JsonKey(name: 'species_id') required this.speciesId,
      @JsonKey(name: 'custom_name') required this.customName,
      @JsonKey(name: 'room_id') required this.roomId});

  factory _$CreateGardenPlantBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateGardenPlantBodyImplFromJson(json);

  @override
  @JsonKey(name: 'species_id')
  final int speciesId;
  @override
  @JsonKey(name: 'custom_name')
  final String customName;
  @override
  @JsonKey(name: 'room_id')
  final int? roomId;

  @override
  String toString() {
    return 'CreateGardenPlantBody(speciesId: $speciesId, customName: $customName, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGardenPlantBodyImpl &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.customName, customName) ||
                other.customName == customName) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speciesId, customName, roomId);

  /// Create a copy of CreateGardenPlantBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGardenPlantBodyImplCopyWith<_$CreateGardenPlantBodyImpl>
      get copyWith => __$$CreateGardenPlantBodyImplCopyWithImpl<
          _$CreateGardenPlantBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGardenPlantBodyImplToJson(
      this,
    );
  }
}

abstract class _CreateGardenPlantBody implements CreateGardenPlantBody {
  const factory _CreateGardenPlantBody(
          {@JsonKey(name: 'species_id') required final int speciesId,
          @JsonKey(name: 'custom_name') required final String customName,
          @JsonKey(name: 'room_id') required final int? roomId}) =
      _$CreateGardenPlantBodyImpl;

  factory _CreateGardenPlantBody.fromJson(Map<String, dynamic> json) =
      _$CreateGardenPlantBodyImpl.fromJson;

  @override
  @JsonKey(name: 'species_id')
  int get speciesId;
  @override
  @JsonKey(name: 'custom_name')
  String get customName;
  @override
  @JsonKey(name: 'room_id')
  int? get roomId;

  /// Create a copy of CreateGardenPlantBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGardenPlantBodyImplCopyWith<_$CreateGardenPlantBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
