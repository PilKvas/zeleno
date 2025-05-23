// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginationWrapper<T> {
  int get count => throw _privateConstructorUsedError;
  List<T> get items => throw _privateConstructorUsedError;

  /// Create a copy of PaginationWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationWrapperCopyWith<T, PaginationWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationWrapperCopyWith<T, $Res> {
  factory $PaginationWrapperCopyWith(PaginationWrapper<T> value,
          $Res Function(PaginationWrapper<T>) then) =
      _$PaginationWrapperCopyWithImpl<T, $Res, PaginationWrapper<T>>;
  @useResult
  $Res call({int count, List<T> items});
}

/// @nodoc
class _$PaginationWrapperCopyWithImpl<T, $Res,
        $Val extends PaginationWrapper<T>>
    implements $PaginationWrapperCopyWith<T, $Res> {
  _$PaginationWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationWrapper
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
abstract class _$$PaginationWrapperImplCopyWith<T, $Res>
    implements $PaginationWrapperCopyWith<T, $Res> {
  factory _$$PaginationWrapperImplCopyWith(_$PaginationWrapperImpl<T> value,
          $Res Function(_$PaginationWrapperImpl<T>) then) =
      __$$PaginationWrapperImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int count, List<T> items});
}

/// @nodoc
class __$$PaginationWrapperImplCopyWithImpl<T, $Res>
    extends _$PaginationWrapperCopyWithImpl<T, $Res, _$PaginationWrapperImpl<T>>
    implements _$$PaginationWrapperImplCopyWith<T, $Res> {
  __$$PaginationWrapperImplCopyWithImpl(_$PaginationWrapperImpl<T> _value,
      $Res Function(_$PaginationWrapperImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginationWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_$PaginationWrapperImpl<T>(
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

class _$PaginationWrapperImpl<T> implements _PaginationWrapper<T> {
  const _$PaginationWrapperImpl(
      {required this.count, final List<T> items = const []})
      : _items = items;

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
    return 'PaginationWrapper<$T>(count: $count, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationWrapperImpl<T> &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_items));

  /// Create a copy of PaginationWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationWrapperImplCopyWith<T, _$PaginationWrapperImpl<T>>
      get copyWith =>
          __$$PaginationWrapperImplCopyWithImpl<T, _$PaginationWrapperImpl<T>>(
              this, _$identity);
}

abstract class _PaginationWrapper<T> implements PaginationWrapper<T> {
  const factory _PaginationWrapper(
      {required final int count,
      final List<T> items}) = _$PaginationWrapperImpl<T>;

  @override
  int get count;
  @override
  List<T> get items;

  /// Create a copy of PaginationWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationWrapperImplCopyWith<T, _$PaginationWrapperImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
