// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garden_plants_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GardenPlantsResponse _$GardenPlantsResponseFromJson(Map<String, dynamic> json) {
  return _GardenPlantsResponse.fromJson(json);
}

/// @nodoc
mixin _$GardenPlantsResponse {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "latin_name")
  String get latinName => throw _privateConstructorUsedError;
  @JsonKey(name: "custom_name")
  String? get customName => throw _privateConstructorUsedError;

  /// Serializes this GardenPlantsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GardenPlantsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GardenPlantsResponseCopyWith<GardenPlantsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GardenPlantsResponseCopyWith<$Res> {
  factory $GardenPlantsResponseCopyWith(GardenPlantsResponse value,
          $Res Function(GardenPlantsResponse) then) =
      _$GardenPlantsResponseCopyWithImpl<$Res, GardenPlantsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "latin_name") String latinName,
      @JsonKey(name: "custom_name") String? customName});
}

/// @nodoc
class _$GardenPlantsResponseCopyWithImpl<$Res,
        $Val extends GardenPlantsResponse>
    implements $GardenPlantsResponseCopyWith<$Res> {
  _$GardenPlantsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GardenPlantsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latinName = null,
    Object? customName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latinName: null == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String,
      customName: freezed == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GardenPlantsResponseImplCopyWith<$Res>
    implements $GardenPlantsResponseCopyWith<$Res> {
  factory _$$GardenPlantsResponseImplCopyWith(_$GardenPlantsResponseImpl value,
          $Res Function(_$GardenPlantsResponseImpl) then) =
      __$$GardenPlantsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "latin_name") String latinName,
      @JsonKey(name: "custom_name") String? customName});
}

/// @nodoc
class __$$GardenPlantsResponseImplCopyWithImpl<$Res>
    extends _$GardenPlantsResponseCopyWithImpl<$Res, _$GardenPlantsResponseImpl>
    implements _$$GardenPlantsResponseImplCopyWith<$Res> {
  __$$GardenPlantsResponseImplCopyWithImpl(_$GardenPlantsResponseImpl _value,
      $Res Function(_$GardenPlantsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GardenPlantsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latinName = null,
    Object? customName = freezed,
  }) {
    return _then(_$GardenPlantsResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latinName: null == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String,
      customName: freezed == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GardenPlantsResponseImpl implements _GardenPlantsResponse {
  const _$GardenPlantsResponseImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "latin_name") required this.latinName,
      @JsonKey(name: "custom_name") this.customName});

  factory _$GardenPlantsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GardenPlantsResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "latin_name")
  final String latinName;
  @override
  @JsonKey(name: "custom_name")
  final String? customName;

  @override
  String toString() {
    return 'GardenPlantsResponse(id: $id, latinName: $latinName, customName: $customName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GardenPlantsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latinName, latinName) ||
                other.latinName == latinName) &&
            (identical(other.customName, customName) ||
                other.customName == customName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, latinName, customName);

  /// Create a copy of GardenPlantsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GardenPlantsResponseImplCopyWith<_$GardenPlantsResponseImpl>
      get copyWith =>
          __$$GardenPlantsResponseImplCopyWithImpl<_$GardenPlantsResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GardenPlantsResponseImplToJson(
      this,
    );
  }
}

abstract class _GardenPlantsResponse implements GardenPlantsResponse {
  const factory _GardenPlantsResponse(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "latin_name") required final String latinName,
          @JsonKey(name: "custom_name") final String? customName}) =
      _$GardenPlantsResponseImpl;

  factory _GardenPlantsResponse.fromJson(Map<String, dynamic> json) =
      _$GardenPlantsResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "latin_name")
  String get latinName;
  @override
  @JsonKey(name: "custom_name")
  String? get customName;

  /// Create a copy of GardenPlantsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GardenPlantsResponseImplCopyWith<_$GardenPlantsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
