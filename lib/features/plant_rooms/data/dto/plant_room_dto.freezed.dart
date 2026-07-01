// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_room_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlantRoomDto _$PlantRoomDtoFromJson(Map<String, dynamic> json) {
  return _PlantRoomDto.fromJson(json);
}

/// @nodoc
mixin _$PlantRoomDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity_percent')
  int? get humidityPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'illuminance_lux')
  int? get illuminanceLux => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_celsius')
  double? get temperatureCelsius => throw _privateConstructorUsedError;
  @JsonKey(name: 'window_direction')
  String? get windowDirection => throw _privateConstructorUsedError;

  /// Serializes this PlantRoomDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantRoomDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantRoomDtoCopyWith<PlantRoomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantRoomDtoCopyWith<$Res> {
  factory $PlantRoomDtoCopyWith(
          PlantRoomDto value, $Res Function(PlantRoomDto) then) =
      _$PlantRoomDtoCopyWithImpl<$Res, PlantRoomDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'humidity_percent') int? humidityPercent,
      @JsonKey(name: 'illuminance_lux') int? illuminanceLux,
      @JsonKey(name: 'temperature_celsius') double? temperatureCelsius,
      @JsonKey(name: 'window_direction') String? windowDirection});
}

/// @nodoc
class _$PlantRoomDtoCopyWithImpl<$Res, $Val extends PlantRoomDto>
    implements $PlantRoomDtoCopyWith<$Res> {
  _$PlantRoomDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantRoomDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? humidityPercent = freezed,
    Object? illuminanceLux = freezed,
    Object? temperatureCelsius = freezed,
    Object? windowDirection = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      humidityPercent: freezed == humidityPercent
          ? _value.humidityPercent
          : humidityPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      illuminanceLux: freezed == illuminanceLux
          ? _value.illuminanceLux
          : illuminanceLux // ignore: cast_nullable_to_non_nullable
              as int?,
      temperatureCelsius: freezed == temperatureCelsius
          ? _value.temperatureCelsius
          : temperatureCelsius // ignore: cast_nullable_to_non_nullable
              as double?,
      windowDirection: freezed == windowDirection
          ? _value.windowDirection
          : windowDirection // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantRoomDtoImplCopyWith<$Res>
    implements $PlantRoomDtoCopyWith<$Res> {
  factory _$$PlantRoomDtoImplCopyWith(
          _$PlantRoomDtoImpl value, $Res Function(_$PlantRoomDtoImpl) then) =
      __$$PlantRoomDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'humidity_percent') int? humidityPercent,
      @JsonKey(name: 'illuminance_lux') int? illuminanceLux,
      @JsonKey(name: 'temperature_celsius') double? temperatureCelsius,
      @JsonKey(name: 'window_direction') String? windowDirection});
}

/// @nodoc
class __$$PlantRoomDtoImplCopyWithImpl<$Res>
    extends _$PlantRoomDtoCopyWithImpl<$Res, _$PlantRoomDtoImpl>
    implements _$$PlantRoomDtoImplCopyWith<$Res> {
  __$$PlantRoomDtoImplCopyWithImpl(
      _$PlantRoomDtoImpl _value, $Res Function(_$PlantRoomDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantRoomDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? humidityPercent = freezed,
    Object? illuminanceLux = freezed,
    Object? temperatureCelsius = freezed,
    Object? windowDirection = freezed,
  }) {
    return _then(_$PlantRoomDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      humidityPercent: freezed == humidityPercent
          ? _value.humidityPercent
          : humidityPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      illuminanceLux: freezed == illuminanceLux
          ? _value.illuminanceLux
          : illuminanceLux // ignore: cast_nullable_to_non_nullable
              as int?,
      temperatureCelsius: freezed == temperatureCelsius
          ? _value.temperatureCelsius
          : temperatureCelsius // ignore: cast_nullable_to_non_nullable
              as double?,
      windowDirection: freezed == windowDirection
          ? _value.windowDirection
          : windowDirection // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantRoomDtoImpl extends _PlantRoomDto {
  const _$PlantRoomDtoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'humidity_percent') this.humidityPercent,
      @JsonKey(name: 'illuminance_lux') this.illuminanceLux,
      @JsonKey(name: 'temperature_celsius') this.temperatureCelsius,
      @JsonKey(name: 'window_direction') this.windowDirection})
      : super._();

  factory _$PlantRoomDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantRoomDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'humidity_percent')
  final int? humidityPercent;
  @override
  @JsonKey(name: 'illuminance_lux')
  final int? illuminanceLux;
  @override
  @JsonKey(name: 'temperature_celsius')
  final double? temperatureCelsius;
  @override
  @JsonKey(name: 'window_direction')
  final String? windowDirection;

  @override
  String toString() {
    return 'PlantRoomDto(id: $id, name: $name, humidityPercent: $humidityPercent, illuminanceLux: $illuminanceLux, temperatureCelsius: $temperatureCelsius, windowDirection: $windowDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantRoomDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.humidityPercent, humidityPercent) ||
                other.humidityPercent == humidityPercent) &&
            (identical(other.illuminanceLux, illuminanceLux) ||
                other.illuminanceLux == illuminanceLux) &&
            (identical(other.temperatureCelsius, temperatureCelsius) ||
                other.temperatureCelsius == temperatureCelsius) &&
            (identical(other.windowDirection, windowDirection) ||
                other.windowDirection == windowDirection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, humidityPercent,
      illuminanceLux, temperatureCelsius, windowDirection);

  /// Create a copy of PlantRoomDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantRoomDtoImplCopyWith<_$PlantRoomDtoImpl> get copyWith =>
      __$$PlantRoomDtoImplCopyWithImpl<_$PlantRoomDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantRoomDtoImplToJson(
      this,
    );
  }
}

abstract class _PlantRoomDto extends PlantRoomDto {
  const factory _PlantRoomDto(
      {required final int id,
      required final String name,
      @JsonKey(name: 'humidity_percent') final int? humidityPercent,
      @JsonKey(name: 'illuminance_lux') final int? illuminanceLux,
      @JsonKey(name: 'temperature_celsius') final double? temperatureCelsius,
      @JsonKey(name: 'window_direction')
      final String? windowDirection}) = _$PlantRoomDtoImpl;
  const _PlantRoomDto._() : super._();

  factory _PlantRoomDto.fromJson(Map<String, dynamic> json) =
      _$PlantRoomDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'humidity_percent')
  int? get humidityPercent;
  @override
  @JsonKey(name: 'illuminance_lux')
  int? get illuminanceLux;
  @override
  @JsonKey(name: 'temperature_celsius')
  double? get temperatureCelsius;
  @override
  @JsonKey(name: 'window_direction')
  String? get windowDirection;

  /// Create a copy of PlantRoomDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantRoomDtoImplCopyWith<_$PlantRoomDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
