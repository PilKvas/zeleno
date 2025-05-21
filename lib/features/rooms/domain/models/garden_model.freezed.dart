// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garden_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GardenModel _$GardenModelFromJson(Map<String, dynamic> json) {
  return _GardenModel.fromJson(json);
}

/// @nodoc
mixin _$GardenModel {
  @JsonKey(name: "room_id")
  int get roomId => throw _privateConstructorUsedError;
  @JsonKey(name: "specie_id")
  int get specieId => throw _privateConstructorUsedError;
  @JsonKey(name: "parameters")
  Parameters? get parameters => throw _privateConstructorUsedError;
  @JsonKey(name: "custom_name")
  String? get customName => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this GardenModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GardenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GardenModelCopyWith<GardenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GardenModelCopyWith<$Res> {
  factory $GardenModelCopyWith(
          GardenModel value, $Res Function(GardenModel) then) =
      _$GardenModelCopyWithImpl<$Res, GardenModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "room_id") int roomId,
      @JsonKey(name: "specie_id") int specieId,
      @JsonKey(name: "parameters") Parameters? parameters,
      @JsonKey(name: "custom_name") String? customName,
      @JsonKey(name: "description") String? description});

  $ParametersCopyWith<$Res>? get parameters;
}

/// @nodoc
class _$GardenModelCopyWithImpl<$Res, $Val extends GardenModel>
    implements $GardenModelCopyWith<$Res> {
  _$GardenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GardenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? specieId = null,
    Object? parameters = freezed,
    Object? customName = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      specieId: null == specieId
          ? _value.specieId
          : specieId // ignore: cast_nullable_to_non_nullable
              as int,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Parameters?,
      customName: freezed == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of GardenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParametersCopyWith<$Res>? get parameters {
    if (_value.parameters == null) {
      return null;
    }

    return $ParametersCopyWith<$Res>(_value.parameters!, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GardenModelImplCopyWith<$Res>
    implements $GardenModelCopyWith<$Res> {
  factory _$$GardenModelImplCopyWith(
          _$GardenModelImpl value, $Res Function(_$GardenModelImpl) then) =
      __$$GardenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "room_id") int roomId,
      @JsonKey(name: "specie_id") int specieId,
      @JsonKey(name: "parameters") Parameters? parameters,
      @JsonKey(name: "custom_name") String? customName,
      @JsonKey(name: "description") String? description});

  @override
  $ParametersCopyWith<$Res>? get parameters;
}

/// @nodoc
class __$$GardenModelImplCopyWithImpl<$Res>
    extends _$GardenModelCopyWithImpl<$Res, _$GardenModelImpl>
    implements _$$GardenModelImplCopyWith<$Res> {
  __$$GardenModelImplCopyWithImpl(
      _$GardenModelImpl _value, $Res Function(_$GardenModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GardenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? specieId = null,
    Object? parameters = freezed,
    Object? customName = freezed,
    Object? description = freezed,
  }) {
    return _then(_$GardenModelImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      specieId: null == specieId
          ? _value.specieId
          : specieId // ignore: cast_nullable_to_non_nullable
              as int,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Parameters?,
      customName: freezed == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GardenModelImpl implements _GardenModel {
  const _$GardenModelImpl(
      {@JsonKey(name: "room_id") required this.roomId,
      @JsonKey(name: "specie_id") required this.specieId,
      @JsonKey(name: "parameters") this.parameters,
      @JsonKey(name: "custom_name") this.customName,
      @JsonKey(name: "description") this.description});

  factory _$GardenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GardenModelImplFromJson(json);

  @override
  @JsonKey(name: "room_id")
  final int roomId;
  @override
  @JsonKey(name: "specie_id")
  final int specieId;
  @override
  @JsonKey(name: "parameters")
  final Parameters? parameters;
  @override
  @JsonKey(name: "custom_name")
  final String? customName;
  @override
  @JsonKey(name: "description")
  final String? description;

  @override
  String toString() {
    return 'GardenModel(roomId: $roomId, specieId: $specieId, parameters: $parameters, customName: $customName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GardenModelImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.specieId, specieId) ||
                other.specieId == specieId) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.customName, customName) ||
                other.customName == customName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, roomId, specieId, parameters, customName, description);

  /// Create a copy of GardenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GardenModelImplCopyWith<_$GardenModelImpl> get copyWith =>
      __$$GardenModelImplCopyWithImpl<_$GardenModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GardenModelImplToJson(
      this,
    );
  }
}

abstract class _GardenModel implements GardenModel {
  const factory _GardenModel(
          {@JsonKey(name: "room_id") required final int roomId,
          @JsonKey(name: "specie_id") required final int specieId,
          @JsonKey(name: "parameters") final Parameters? parameters,
          @JsonKey(name: "custom_name") final String? customName,
          @JsonKey(name: "description") final String? description}) =
      _$GardenModelImpl;

  factory _GardenModel.fromJson(Map<String, dynamic> json) =
      _$GardenModelImpl.fromJson;

  @override
  @JsonKey(name: "room_id")
  int get roomId;
  @override
  @JsonKey(name: "specie_id")
  int get specieId;
  @override
  @JsonKey(name: "parameters")
  Parameters? get parameters;
  @override
  @JsonKey(name: "custom_name")
  String? get customName;
  @override
  @JsonKey(name: "description")
  String? get description;

  /// Create a copy of GardenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GardenModelImplCopyWith<_$GardenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Parameters _$ParametersFromJson(Map<String, dynamic> json) {
  return _Parameters.fromJson(json);
}

/// @nodoc
mixin _$Parameters {
  @JsonKey(name: "last_water")
  DateTime get lastWater => throw _privateConstructorUsedError;
  @JsonKey(name: "last_fertilizer")
  DateTime get lastFertilizer => throw _privateConstructorUsedError;
  @JsonKey(name: "last_repot")
  DateTime get lastRepot => throw _privateConstructorUsedError;
  @JsonKey(name: "last_prun")
  DateTime get lastPrun => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: "pot_diameter")
  int get potDiameter => throw _privateConstructorUsedError;
  @JsonKey(name: "pot_height")
  int get potHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "current_state")
  String get currentState => throw _privateConstructorUsedError;
  @JsonKey(name: "exposure")
  String get exposure => throw _privateConstructorUsedError;

  /// Serializes this Parameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParametersCopyWith<Parameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParametersCopyWith<$Res> {
  factory $ParametersCopyWith(
          Parameters value, $Res Function(Parameters) then) =
      _$ParametersCopyWithImpl<$Res, Parameters>;
  @useResult
  $Res call(
      {@JsonKey(name: "last_water") DateTime lastWater,
      @JsonKey(name: "last_fertilizer") DateTime lastFertilizer,
      @JsonKey(name: "last_repot") DateTime lastRepot,
      @JsonKey(name: "last_prun") DateTime lastPrun,
      @JsonKey(name: "height") int height,
      @JsonKey(name: "pot_diameter") int potDiameter,
      @JsonKey(name: "pot_height") int potHeight,
      @JsonKey(name: "current_state") String currentState,
      @JsonKey(name: "exposure") String exposure});
}

/// @nodoc
class _$ParametersCopyWithImpl<$Res, $Val extends Parameters>
    implements $ParametersCopyWith<$Res> {
  _$ParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastWater = null,
    Object? lastFertilizer = null,
    Object? lastRepot = null,
    Object? lastPrun = null,
    Object? height = null,
    Object? potDiameter = null,
    Object? potHeight = null,
    Object? currentState = null,
    Object? exposure = null,
  }) {
    return _then(_value.copyWith(
      lastWater: null == lastWater
          ? _value.lastWater
          : lastWater // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastFertilizer: null == lastFertilizer
          ? _value.lastFertilizer
          : lastFertilizer // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastRepot: null == lastRepot
          ? _value.lastRepot
          : lastRepot // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastPrun: null == lastPrun
          ? _value.lastPrun
          : lastPrun // ignore: cast_nullable_to_non_nullable
              as DateTime,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      potDiameter: null == potDiameter
          ? _value.potDiameter
          : potDiameter // ignore: cast_nullable_to_non_nullable
              as int,
      potHeight: null == potHeight
          ? _value.potHeight
          : potHeight // ignore: cast_nullable_to_non_nullable
              as int,
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as String,
      exposure: null == exposure
          ? _value.exposure
          : exposure // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParametersImplCopyWith<$Res>
    implements $ParametersCopyWith<$Res> {
  factory _$$ParametersImplCopyWith(
          _$ParametersImpl value, $Res Function(_$ParametersImpl) then) =
      __$$ParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "last_water") DateTime lastWater,
      @JsonKey(name: "last_fertilizer") DateTime lastFertilizer,
      @JsonKey(name: "last_repot") DateTime lastRepot,
      @JsonKey(name: "last_prun") DateTime lastPrun,
      @JsonKey(name: "height") int height,
      @JsonKey(name: "pot_diameter") int potDiameter,
      @JsonKey(name: "pot_height") int potHeight,
      @JsonKey(name: "current_state") String currentState,
      @JsonKey(name: "exposure") String exposure});
}

/// @nodoc
class __$$ParametersImplCopyWithImpl<$Res>
    extends _$ParametersCopyWithImpl<$Res, _$ParametersImpl>
    implements _$$ParametersImplCopyWith<$Res> {
  __$$ParametersImplCopyWithImpl(
      _$ParametersImpl _value, $Res Function(_$ParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastWater = null,
    Object? lastFertilizer = null,
    Object? lastRepot = null,
    Object? lastPrun = null,
    Object? height = null,
    Object? potDiameter = null,
    Object? potHeight = null,
    Object? currentState = null,
    Object? exposure = null,
  }) {
    return _then(_$ParametersImpl(
      lastWater: null == lastWater
          ? _value.lastWater
          : lastWater // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastFertilizer: null == lastFertilizer
          ? _value.lastFertilizer
          : lastFertilizer // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastRepot: null == lastRepot
          ? _value.lastRepot
          : lastRepot // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastPrun: null == lastPrun
          ? _value.lastPrun
          : lastPrun // ignore: cast_nullable_to_non_nullable
              as DateTime,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      potDiameter: null == potDiameter
          ? _value.potDiameter
          : potDiameter // ignore: cast_nullable_to_non_nullable
              as int,
      potHeight: null == potHeight
          ? _value.potHeight
          : potHeight // ignore: cast_nullable_to_non_nullable
              as int,
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as String,
      exposure: null == exposure
          ? _value.exposure
          : exposure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParametersImpl implements _Parameters {
  const _$ParametersImpl(
      {@JsonKey(name: "last_water") required this.lastWater,
      @JsonKey(name: "last_fertilizer") required this.lastFertilizer,
      @JsonKey(name: "last_repot") required this.lastRepot,
      @JsonKey(name: "last_prun") required this.lastPrun,
      @JsonKey(name: "height") required this.height,
      @JsonKey(name: "pot_diameter") required this.potDiameter,
      @JsonKey(name: "pot_height") required this.potHeight,
      @JsonKey(name: "current_state") required this.currentState,
      @JsonKey(name: "exposure") required this.exposure});

  factory _$ParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParametersImplFromJson(json);

  @override
  @JsonKey(name: "last_water")
  final DateTime lastWater;
  @override
  @JsonKey(name: "last_fertilizer")
  final DateTime lastFertilizer;
  @override
  @JsonKey(name: "last_repot")
  final DateTime lastRepot;
  @override
  @JsonKey(name: "last_prun")
  final DateTime lastPrun;
  @override
  @JsonKey(name: "height")
  final int height;
  @override
  @JsonKey(name: "pot_diameter")
  final int potDiameter;
  @override
  @JsonKey(name: "pot_height")
  final int potHeight;
  @override
  @JsonKey(name: "current_state")
  final String currentState;
  @override
  @JsonKey(name: "exposure")
  final String exposure;

  @override
  String toString() {
    return 'Parameters(lastWater: $lastWater, lastFertilizer: $lastFertilizer, lastRepot: $lastRepot, lastPrun: $lastPrun, height: $height, potDiameter: $potDiameter, potHeight: $potHeight, currentState: $currentState, exposure: $exposure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParametersImpl &&
            (identical(other.lastWater, lastWater) ||
                other.lastWater == lastWater) &&
            (identical(other.lastFertilizer, lastFertilizer) ||
                other.lastFertilizer == lastFertilizer) &&
            (identical(other.lastRepot, lastRepot) ||
                other.lastRepot == lastRepot) &&
            (identical(other.lastPrun, lastPrun) ||
                other.lastPrun == lastPrun) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.potDiameter, potDiameter) ||
                other.potDiameter == potDiameter) &&
            (identical(other.potHeight, potHeight) ||
                other.potHeight == potHeight) &&
            (identical(other.currentState, currentState) ||
                other.currentState == currentState) &&
            (identical(other.exposure, exposure) ||
                other.exposure == exposure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lastWater,
      lastFertilizer,
      lastRepot,
      lastPrun,
      height,
      potDiameter,
      potHeight,
      currentState,
      exposure);

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParametersImplCopyWith<_$ParametersImpl> get copyWith =>
      __$$ParametersImplCopyWithImpl<_$ParametersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParametersImplToJson(
      this,
    );
  }
}

abstract class _Parameters implements Parameters {
  const factory _Parameters(
      {@JsonKey(name: "last_water") required final DateTime lastWater,
      @JsonKey(name: "last_fertilizer") required final DateTime lastFertilizer,
      @JsonKey(name: "last_repot") required final DateTime lastRepot,
      @JsonKey(name: "last_prun") required final DateTime lastPrun,
      @JsonKey(name: "height") required final int height,
      @JsonKey(name: "pot_diameter") required final int potDiameter,
      @JsonKey(name: "pot_height") required final int potHeight,
      @JsonKey(name: "current_state") required final String currentState,
      @JsonKey(name: "exposure")
      required final String exposure}) = _$ParametersImpl;

  factory _Parameters.fromJson(Map<String, dynamic> json) =
      _$ParametersImpl.fromJson;

  @override
  @JsonKey(name: "last_water")
  DateTime get lastWater;
  @override
  @JsonKey(name: "last_fertilizer")
  DateTime get lastFertilizer;
  @override
  @JsonKey(name: "last_repot")
  DateTime get lastRepot;
  @override
  @JsonKey(name: "last_prun")
  DateTime get lastPrun;
  @override
  @JsonKey(name: "height")
  int get height;
  @override
  @JsonKey(name: "pot_diameter")
  int get potDiameter;
  @override
  @JsonKey(name: "pot_height")
  int get potHeight;
  @override
  @JsonKey(name: "current_state")
  String get currentState;
  @override
  @JsonKey(name: "exposure")
  String get exposure;

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParametersImplCopyWith<_$ParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
