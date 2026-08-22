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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlantFilterItemDto _$PlantFilterItemDtoFromJson(Map<String, dynamic> json) {
  return _PlantFilterItemDto.fromJson(json);
}

/// @nodoc
mixin _$PlantFilterItemDto {
  String get name =>
      throw _privateConstructorUsedError; // По схеме ChoiceItemSchema slug может быть null (например, у tags),
  // такой элемент нельзя отправить в фильтр.
  String? get slug => throw _privateConstructorUsedError;

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
    PlantFilterItemDto value,
    $Res Function(PlantFilterItemDto) then,
  ) = _$PlantFilterItemDtoCopyWithImpl<$Res, PlantFilterItemDto>;
  @useResult
  $Res call({String name, String? slug});
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
  $Res call({Object? name = null, Object? slug = freezed}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlantFilterItemDtoImplCopyWith<$Res>
    implements $PlantFilterItemDtoCopyWith<$Res> {
  factory _$$PlantFilterItemDtoImplCopyWith(
    _$PlantFilterItemDtoImpl value,
    $Res Function(_$PlantFilterItemDtoImpl) then,
  ) = __$$PlantFilterItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? slug});
}

/// @nodoc
class __$$PlantFilterItemDtoImplCopyWithImpl<$Res>
    extends _$PlantFilterItemDtoCopyWithImpl<$Res, _$PlantFilterItemDtoImpl>
    implements _$$PlantFilterItemDtoImplCopyWith<$Res> {
  __$$PlantFilterItemDtoImplCopyWithImpl(
    _$PlantFilterItemDtoImpl _value,
    $Res Function(_$PlantFilterItemDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlantFilterItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? slug = freezed}) {
    return _then(
      _$PlantFilterItemDtoImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantFilterItemDtoImpl implements _PlantFilterItemDto {
  const _$PlantFilterItemDtoImpl({required this.name, this.slug});

  factory _$PlantFilterItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantFilterItemDtoImplFromJson(json);

  @override
  final String name;
  // По схеме ChoiceItemSchema slug может быть null (например, у tags),
  // такой элемент нельзя отправить в фильтр.
  @override
  final String? slug;

  @override
  String toString() {
    return 'PlantFilterItemDto(name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantFilterItemDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug);

  /// Create a copy of PlantFilterItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantFilterItemDtoImplCopyWith<_$PlantFilterItemDtoImpl> get copyWith =>
      __$$PlantFilterItemDtoImplCopyWithImpl<_$PlantFilterItemDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantFilterItemDtoImplToJson(this);
  }
}

abstract class _PlantFilterItemDto implements PlantFilterItemDto {
  const factory _PlantFilterItemDto({
    required final String name,
    final String? slug,
  }) = _$PlantFilterItemDtoImpl;

  factory _PlantFilterItemDto.fromJson(Map<String, dynamic> json) =
      _$PlantFilterItemDtoImpl.fromJson;

  @override
  String get name; // По схеме ChoiceItemSchema slug может быть null (например, у tags),
  // такой элемент нельзя отправить в фильтр.
  @override
  String? get slug;

  /// Create a copy of PlantFilterItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantFilterItemDtoImplCopyWith<_$PlantFilterItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
