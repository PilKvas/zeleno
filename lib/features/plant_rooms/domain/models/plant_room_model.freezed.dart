// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlantRoomModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get humidityPercent => throw _privateConstructorUsedError;
  int? get illuminanceLux => throw _privateConstructorUsedError;
  double? get temperatureCelsius => throw _privateConstructorUsedError;
  String? get windowDirection => throw _privateConstructorUsedError;

  /// Create a copy of PlantRoomModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantRoomModelCopyWith<PlantRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantRoomModelCopyWith<$Res> {
  factory $PlantRoomModelCopyWith(
          PlantRoomModel value, $Res Function(PlantRoomModel) then) =
      _$PlantRoomModelCopyWithImpl<$Res, PlantRoomModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int? humidityPercent,
      int? illuminanceLux,
      double? temperatureCelsius,
      String? windowDirection});
}

/// @nodoc
class _$PlantRoomModelCopyWithImpl<$Res, $Val extends PlantRoomModel>
    implements $PlantRoomModelCopyWith<$Res> {
  _$PlantRoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantRoomModel
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
abstract class _$$PlantRoomModelImplCopyWith<$Res>
    implements $PlantRoomModelCopyWith<$Res> {
  factory _$$PlantRoomModelImplCopyWith(_$PlantRoomModelImpl value,
          $Res Function(_$PlantRoomModelImpl) then) =
      __$$PlantRoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int? humidityPercent,
      int? illuminanceLux,
      double? temperatureCelsius,
      String? windowDirection});
}

/// @nodoc
class __$$PlantRoomModelImplCopyWithImpl<$Res>
    extends _$PlantRoomModelCopyWithImpl<$Res, _$PlantRoomModelImpl>
    implements _$$PlantRoomModelImplCopyWith<$Res> {
  __$$PlantRoomModelImplCopyWithImpl(
      _$PlantRoomModelImpl _value, $Res Function(_$PlantRoomModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantRoomModel
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
    return _then(_$PlantRoomModelImpl(
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

class _$PlantRoomModelImpl implements _PlantRoomModel {
  const _$PlantRoomModelImpl(
      {required this.id,
      required this.name,
      this.humidityPercent,
      this.illuminanceLux,
      this.temperatureCelsius,
      this.windowDirection});

  @override
  final int id;
  @override
  final String name;
  @override
  final int? humidityPercent;
  @override
  final int? illuminanceLux;
  @override
  final double? temperatureCelsius;
  @override
  final String? windowDirection;

  @override
  String toString() {
    return 'PlantRoomModel(id: $id, name: $name, humidityPercent: $humidityPercent, illuminanceLux: $illuminanceLux, temperatureCelsius: $temperatureCelsius, windowDirection: $windowDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantRoomModelImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, name, humidityPercent,
      illuminanceLux, temperatureCelsius, windowDirection);

  /// Create a copy of PlantRoomModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantRoomModelImplCopyWith<_$PlantRoomModelImpl> get copyWith =>
      __$$PlantRoomModelImplCopyWithImpl<_$PlantRoomModelImpl>(
          this, _$identity);
}

abstract class _PlantRoomModel implements PlantRoomModel {
  const factory _PlantRoomModel(
      {required final int id,
      required final String name,
      final int? humidityPercent,
      final int? illuminanceLux,
      final double? temperatureCelsius,
      final String? windowDirection}) = _$PlantRoomModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  int? get humidityPercent;
  @override
  int? get illuminanceLux;
  @override
  double? get temperatureCelsius;
  @override
  String? get windowDirection;

  /// Create a copy of PlantRoomModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantRoomModelImplCopyWith<_$PlantRoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
