// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_search_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlantSearchItemDto _$PlantSearchItemDtoFromJson(Map<String, dynamic> json) {
  return _PlantSearchItemDto.fromJson(json);
}

/// @nodoc
mixin _$PlantSearchItemDto {
  String get slug => throw _privateConstructorUsedError;
  String? get latinName => throw _privateConstructorUsedError;
  String? get mainCommonName => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this PlantSearchItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantSearchItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantSearchItemDtoCopyWith<PlantSearchItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantSearchItemDtoCopyWith<$Res> {
  factory $PlantSearchItemDtoCopyWith(
          PlantSearchItemDto value, $Res Function(PlantSearchItemDto) then) =
      _$PlantSearchItemDtoCopyWithImpl<$Res, PlantSearchItemDto>;
  @useResult
  $Res call(
      {String slug,
      String? latinName,
      String? mainCommonName,
      String? imageUrl});
}

/// @nodoc
class _$PlantSearchItemDtoCopyWithImpl<$Res, $Val extends PlantSearchItemDto>
    implements $PlantSearchItemDtoCopyWith<$Res> {
  _$PlantSearchItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantSearchItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? latinName = freezed,
    Object? mainCommonName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      latinName: freezed == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String?,
      mainCommonName: freezed == mainCommonName
          ? _value.mainCommonName
          : mainCommonName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantSearchItemDtoImplCopyWith<$Res>
    implements $PlantSearchItemDtoCopyWith<$Res> {
  factory _$$PlantSearchItemDtoImplCopyWith(_$PlantSearchItemDtoImpl value,
          $Res Function(_$PlantSearchItemDtoImpl) then) =
      __$$PlantSearchItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String slug,
      String? latinName,
      String? mainCommonName,
      String? imageUrl});
}

/// @nodoc
class __$$PlantSearchItemDtoImplCopyWithImpl<$Res>
    extends _$PlantSearchItemDtoCopyWithImpl<$Res, _$PlantSearchItemDtoImpl>
    implements _$$PlantSearchItemDtoImplCopyWith<$Res> {
  __$$PlantSearchItemDtoImplCopyWithImpl(_$PlantSearchItemDtoImpl _value,
      $Res Function(_$PlantSearchItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantSearchItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? latinName = freezed,
    Object? mainCommonName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$PlantSearchItemDtoImpl(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      latinName: freezed == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String?,
      mainCommonName: freezed == mainCommonName
          ? _value.mainCommonName
          : mainCommonName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class _$PlantSearchItemDtoImpl extends _PlantSearchItemDto {
  const _$PlantSearchItemDtoImpl(
      {required this.slug, this.latinName, this.mainCommonName, this.imageUrl})
      : super._();

  factory _$PlantSearchItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantSearchItemDtoImplFromJson(json);

  @override
  final String slug;
  @override
  final String? latinName;
  @override
  final String? mainCommonName;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'PlantSearchItemDto(slug: $slug, latinName: $latinName, mainCommonName: $mainCommonName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantSearchItemDtoImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.latinName, latinName) ||
                other.latinName == latinName) &&
            (identical(other.mainCommonName, mainCommonName) ||
                other.mainCommonName == mainCommonName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, slug, latinName, mainCommonName, imageUrl);

  /// Create a copy of PlantSearchItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantSearchItemDtoImplCopyWith<_$PlantSearchItemDtoImpl> get copyWith =>
      __$$PlantSearchItemDtoImplCopyWithImpl<_$PlantSearchItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantSearchItemDtoImplToJson(
      this,
    );
  }
}

abstract class _PlantSearchItemDto extends PlantSearchItemDto {
  const factory _PlantSearchItemDto(
      {required final String slug,
      final String? latinName,
      final String? mainCommonName,
      final String? imageUrl}) = _$PlantSearchItemDtoImpl;
  const _PlantSearchItemDto._() : super._();

  factory _PlantSearchItemDto.fromJson(Map<String, dynamic> json) =
      _$PlantSearchItemDtoImpl.fromJson;

  @override
  String get slug;
  @override
  String? get latinName;
  @override
  String? get mainCommonName;
  @override
  String? get imageUrl;

  /// Create a copy of PlantSearchItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantSearchItemDtoImplCopyWith<_$PlantSearchItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
