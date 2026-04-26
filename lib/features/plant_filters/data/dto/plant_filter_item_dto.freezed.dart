// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_filter_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlantFilterItemDto _$PlantFilterItemDtoFromJson(Map<String, dynamic> json) {
  return _PlantFilterItemDto.fromJson(json);
}

/// @nodoc
mixin _$PlantFilterItemDto {
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this PlantFilterItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantFilterItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantFilterItemDtoCopyWith<PlantFilterItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantFilterItemDtoCopyWith<$Res> {
  factory $PlantFilterItemDtoCopyWith(
          PlantFilterItemDto value, $Res Function(PlantFilterItemDto) then) =
      _$PlantFilterItemDtoCopyWithImpl<$Res, PlantFilterItemDto>;
  @useResult
  $Res call({String label, String value});
}

/// @nodoc
class _$PlantFilterItemDtoCopyWithImpl<$Res, $Val extends PlantFilterItemDto>
    implements $PlantFilterItemDtoCopyWith<$Res> {
  _$PlantFilterItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantFilterItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantFilterItemDtoImplCopyWith<$Res>
    implements $PlantFilterItemDtoCopyWith<$Res> {
  factory _$$PlantFilterItemDtoImplCopyWith(_$PlantFilterItemDtoImpl value,
          $Res Function(_$PlantFilterItemDtoImpl) then) =
      __$$PlantFilterItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String value});
}

/// @nodoc
class __$$PlantFilterItemDtoImplCopyWithImpl<$Res>
    extends _$PlantFilterItemDtoCopyWithImpl<$Res, _$PlantFilterItemDtoImpl>
    implements _$$PlantFilterItemDtoImplCopyWith<$Res> {
  __$$PlantFilterItemDtoImplCopyWithImpl(_$PlantFilterItemDtoImpl _value,
      $Res Function(_$PlantFilterItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantFilterItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_$PlantFilterItemDtoImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantFilterItemDtoImpl implements _PlantFilterItemDto {
  const _$PlantFilterItemDtoImpl({required this.label, required this.value});

  factory _$PlantFilterItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantFilterItemDtoImplFromJson(json);

  @override
  final String label;
  @override
  final String value;

  @override
  String toString() {
    return 'PlantFilterItemDto(label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantFilterItemDtoImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  /// Create a copy of PlantFilterItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantFilterItemDtoImplCopyWith<_$PlantFilterItemDtoImpl> get copyWith =>
      __$$PlantFilterItemDtoImplCopyWithImpl<_$PlantFilterItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantFilterItemDtoImplToJson(
      this,
    );
  }
}

abstract class _PlantFilterItemDto implements PlantFilterItemDto {
  const factory _PlantFilterItemDto(
      {required final String label,
      required final String value}) = _$PlantFilterItemDtoImpl;

  factory _PlantFilterItemDto.fromJson(Map<String, dynamic> json) =
      _$PlantFilterItemDtoImpl.fromJson;

  @override
  String get label;
  @override
  String get value;

  /// Create a copy of PlantFilterItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantFilterItemDtoImplCopyWith<_$PlantFilterItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
