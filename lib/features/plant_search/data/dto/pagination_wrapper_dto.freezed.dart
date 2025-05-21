// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_wrapper_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationWrapperDto<T> _$PaginationWrapperDtoFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginationWrapperDto<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginationWrapperDto<T> {
  int get count => throw _privateConstructorUsedError;
  List<T> get items => throw _privateConstructorUsedError;

  /// Serializes this PaginationWrapperDto to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaginationWrapperDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationWrapperDtoCopyWith<T, PaginationWrapperDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationWrapperDtoCopyWith<T, $Res> {
  factory $PaginationWrapperDtoCopyWith(PaginationWrapperDto<T> value,
          $Res Function(PaginationWrapperDto<T>) then) =
      _$PaginationWrapperDtoCopyWithImpl<T, $Res, PaginationWrapperDto<T>>;
  @useResult
  $Res call({int count, List<T> items});
}

/// @nodoc
class _$PaginationWrapperDtoCopyWithImpl<T, $Res,
        $Val extends PaginationWrapperDto<T>>
    implements $PaginationWrapperDtoCopyWith<T, $Res> {
  _$PaginationWrapperDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationWrapperDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationWrapperDtoImplCopyWith<T, $Res>
    implements $PaginationWrapperDtoCopyWith<T, $Res> {
  factory _$$PaginationWrapperDtoImplCopyWith(
          _$PaginationWrapperDtoImpl<T> value,
          $Res Function(_$PaginationWrapperDtoImpl<T>) then) =
      __$$PaginationWrapperDtoImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int count, List<T> items});
}

/// @nodoc
class __$$PaginationWrapperDtoImplCopyWithImpl<T, $Res>
    extends _$PaginationWrapperDtoCopyWithImpl<T, $Res,
        _$PaginationWrapperDtoImpl<T>>
    implements _$$PaginationWrapperDtoImplCopyWith<T, $Res> {
  __$$PaginationWrapperDtoImplCopyWithImpl(_$PaginationWrapperDtoImpl<T> _value,
      $Res Function(_$PaginationWrapperDtoImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginationWrapperDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_$PaginationWrapperDtoImpl<T>(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginationWrapperDtoImpl<T> implements _PaginationWrapperDto<T> {
  const _$PaginationWrapperDtoImpl(
      {required this.count, final List<T> items = const []})
      : _items = items;

  factory _$PaginationWrapperDtoImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginationWrapperDtoImplFromJson(json, fromJsonT);

  @override
  final int count;
  final List<T> _items;
  @override
  @JsonKey()
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PaginationWrapperDto<$T>(count: $count, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationWrapperDtoImpl<T> &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_items));

  /// Create a copy of PaginationWrapperDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationWrapperDtoImplCopyWith<T, _$PaginationWrapperDtoImpl<T>>
      get copyWith => __$$PaginationWrapperDtoImplCopyWithImpl<T,
          _$PaginationWrapperDtoImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginationWrapperDtoImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginationWrapperDto<T> implements PaginationWrapperDto<T> {
  const factory _PaginationWrapperDto(
      {required final int count,
      final List<T> items}) = _$PaginationWrapperDtoImpl<T>;

  factory _PaginationWrapperDto.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginationWrapperDtoImpl<T>.fromJson;

  @override
  int get count;
  @override
  List<T> get items;

  /// Create a copy of PaginationWrapperDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationWrapperDtoImplCopyWith<T, _$PaginationWrapperDtoImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
