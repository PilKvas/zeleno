// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_garden_room_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpdateGardenRoomBody _$UpdateGardenRoomBodyFromJson(Map<String, dynamic> json) {
  return _UpdateGardenRoomBody.fromJson(json);
}

/// @nodoc
mixin _$UpdateGardenRoomBody {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_celsius')
  double? get temperatureCelsius => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity_percent')
  int? get humidityPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'illuminance_lux')
  int? get illuminanceLux => throw _privateConstructorUsedError;
  @JsonKey(name: 'window_direction')
  String? get windowDirection => throw _privateConstructorUsedError;

  /// Serializes this UpdateGardenRoomBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateGardenRoomBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateGardenRoomBodyCopyWith<UpdateGardenRoomBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGardenRoomBodyCopyWith<$Res> {
  factory $UpdateGardenRoomBodyCopyWith(
    UpdateGardenRoomBody value,
    $Res Function(UpdateGardenRoomBody) then,
  ) = _$UpdateGardenRoomBodyCopyWithImpl<$Res, UpdateGardenRoomBody>;
  @useResult
  $Res call({
    String name,
    @JsonKey(name: 'temperature_celsius') double? temperatureCelsius,
    @JsonKey(name: 'humidity_percent') int? humidityPercent,
    @JsonKey(name: 'illuminance_lux') int? illuminanceLux,
    @JsonKey(name: 'window_direction') String? windowDirection,
  });
}

/// @nodoc
class _$UpdateGardenRoomBodyCopyWithImpl<
  $Res,
  $Val extends UpdateGardenRoomBody
>
    implements $UpdateGardenRoomBodyCopyWith<$Res> {
  _$UpdateGardenRoomBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateGardenRoomBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? temperatureCelsius = freezed,
    Object? humidityPercent = freezed,
    Object? illuminanceLux = freezed,
    Object? windowDirection = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            temperatureCelsius: freezed == temperatureCelsius
                ? _value.temperatureCelsius
                : temperatureCelsius // ignore: cast_nullable_to_non_nullable
                      as double?,
            humidityPercent: freezed == humidityPercent
                ? _value.humidityPercent
                : humidityPercent // ignore: cast_nullable_to_non_nullable
                      as int?,
            illuminanceLux: freezed == illuminanceLux
                ? _value.illuminanceLux
                : illuminanceLux // ignore: cast_nullable_to_non_nullable
                      as int?,
            windowDirection: freezed == windowDirection
                ? _value.windowDirection
                : windowDirection // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateGardenRoomBodyImplCopyWith<$Res>
    implements $UpdateGardenRoomBodyCopyWith<$Res> {
  factory _$$UpdateGardenRoomBodyImplCopyWith(
    _$UpdateGardenRoomBodyImpl value,
    $Res Function(_$UpdateGardenRoomBodyImpl) then,
  ) = __$$UpdateGardenRoomBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    @JsonKey(name: 'temperature_celsius') double? temperatureCelsius,
    @JsonKey(name: 'humidity_percent') int? humidityPercent,
    @JsonKey(name: 'illuminance_lux') int? illuminanceLux,
    @JsonKey(name: 'window_direction') String? windowDirection,
  });
}

/// @nodoc
class __$$UpdateGardenRoomBodyImplCopyWithImpl<$Res>
    extends _$UpdateGardenRoomBodyCopyWithImpl<$Res, _$UpdateGardenRoomBodyImpl>
    implements _$$UpdateGardenRoomBodyImplCopyWith<$Res> {
  __$$UpdateGardenRoomBodyImplCopyWithImpl(
    _$UpdateGardenRoomBodyImpl _value,
    $Res Function(_$UpdateGardenRoomBodyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateGardenRoomBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? temperatureCelsius = freezed,
    Object? humidityPercent = freezed,
    Object? illuminanceLux = freezed,
    Object? windowDirection = freezed,
  }) {
    return _then(
      _$UpdateGardenRoomBodyImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        temperatureCelsius: freezed == temperatureCelsius
            ? _value.temperatureCelsius
            : temperatureCelsius // ignore: cast_nullable_to_non_nullable
                  as double?,
        humidityPercent: freezed == humidityPercent
            ? _value.humidityPercent
            : humidityPercent // ignore: cast_nullable_to_non_nullable
                  as int?,
        illuminanceLux: freezed == illuminanceLux
            ? _value.illuminanceLux
            : illuminanceLux // ignore: cast_nullable_to_non_nullable
                  as int?,
        windowDirection: freezed == windowDirection
            ? _value.windowDirection
            : windowDirection // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateGardenRoomBodyImpl implements _UpdateGardenRoomBody {
  const _$UpdateGardenRoomBodyImpl({
    required this.name,
    @JsonKey(name: 'temperature_celsius') this.temperatureCelsius,
    @JsonKey(name: 'humidity_percent') this.humidityPercent,
    @JsonKey(name: 'illuminance_lux') this.illuminanceLux,
    @JsonKey(name: 'window_direction') this.windowDirection,
  });

  factory _$UpdateGardenRoomBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateGardenRoomBodyImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'temperature_celsius')
  final double? temperatureCelsius;
  @override
  @JsonKey(name: 'humidity_percent')
  final int? humidityPercent;
  @override
  @JsonKey(name: 'illuminance_lux')
  final int? illuminanceLux;
  @override
  @JsonKey(name: 'window_direction')
  final String? windowDirection;

  @override
  String toString() {
    return 'UpdateGardenRoomBody(name: $name, temperatureCelsius: $temperatureCelsius, humidityPercent: $humidityPercent, illuminanceLux: $illuminanceLux, windowDirection: $windowDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGardenRoomBodyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.temperatureCelsius, temperatureCelsius) ||
                other.temperatureCelsius == temperatureCelsius) &&
            (identical(other.humidityPercent, humidityPercent) ||
                other.humidityPercent == humidityPercent) &&
            (identical(other.illuminanceLux, illuminanceLux) ||
                other.illuminanceLux == illuminanceLux) &&
            (identical(other.windowDirection, windowDirection) ||
                other.windowDirection == windowDirection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    temperatureCelsius,
    humidityPercent,
    illuminanceLux,
    windowDirection,
  );

  /// Create a copy of UpdateGardenRoomBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGardenRoomBodyImplCopyWith<_$UpdateGardenRoomBodyImpl>
  get copyWith =>
      __$$UpdateGardenRoomBodyImplCopyWithImpl<_$UpdateGardenRoomBodyImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateGardenRoomBodyImplToJson(this);
  }
}

abstract class _UpdateGardenRoomBody implements UpdateGardenRoomBody {
  const factory _UpdateGardenRoomBody({
    required final String name,
    @JsonKey(name: 'temperature_celsius') final double? temperatureCelsius,
    @JsonKey(name: 'humidity_percent') final int? humidityPercent,
    @JsonKey(name: 'illuminance_lux') final int? illuminanceLux,
    @JsonKey(name: 'window_direction') final String? windowDirection,
  }) = _$UpdateGardenRoomBodyImpl;

  factory _UpdateGardenRoomBody.fromJson(Map<String, dynamic> json) =
      _$UpdateGardenRoomBodyImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'temperature_celsius')
  double? get temperatureCelsius;
  @override
  @JsonKey(name: 'humidity_percent')
  int? get humidityPercent;
  @override
  @JsonKey(name: 'illuminance_lux')
  int? get illuminanceLux;
  @override
  @JsonKey(name: 'window_direction')
  String? get windowDirection;

  /// Create a copy of UpdateGardenRoomBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGardenRoomBodyImplCopyWith<_$UpdateGardenRoomBodyImpl>
  get copyWith => throw _privateConstructorUsedError;
}
