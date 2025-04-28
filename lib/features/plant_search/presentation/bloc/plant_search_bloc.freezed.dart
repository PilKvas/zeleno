// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlantSearchEvent {
  String? get name => throw _privateConstructorUsedError;
  bool get refresh => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, bool refresh) loadPlantList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, bool refresh)? loadPlantList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, bool refresh)? loadPlantList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPlantList value) loadPlantList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPlantList value)? loadPlantList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPlantList value)? loadPlantList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PlantSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantSearchEventCopyWith<PlantSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantSearchEventCopyWith<$Res> {
  factory $PlantSearchEventCopyWith(
          PlantSearchEvent value, $Res Function(PlantSearchEvent) then) =
      _$PlantSearchEventCopyWithImpl<$Res, PlantSearchEvent>;
  @useResult
  $Res call({String? name, bool refresh});
}

/// @nodoc
class _$PlantSearchEventCopyWithImpl<$Res, $Val extends PlantSearchEvent>
    implements $PlantSearchEventCopyWith<$Res> {
  _$PlantSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadPlantListImplCopyWith<$Res>
    implements $PlantSearchEventCopyWith<$Res> {
  factory _$$LoadPlantListImplCopyWith(
          _$LoadPlantListImpl value, $Res Function(_$LoadPlantListImpl) then) =
      __$$LoadPlantListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, bool refresh});
}

/// @nodoc
class __$$LoadPlantListImplCopyWithImpl<$Res>
    extends _$PlantSearchEventCopyWithImpl<$Res, _$LoadPlantListImpl>
    implements _$$LoadPlantListImplCopyWith<$Res> {
  __$$LoadPlantListImplCopyWithImpl(
      _$LoadPlantListImpl _value, $Res Function(_$LoadPlantListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? refresh = null,
  }) {
    return _then(_$LoadPlantListImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadPlantListImpl implements _LoadPlantList {
  const _$LoadPlantListImpl({this.name, this.refresh = false});

  @override
  final String? name;
  @override
  @JsonKey()
  final bool refresh;

  @override
  String toString() {
    return 'PlantSearchEvent.loadPlantList(name: $name, refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPlantListImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, refresh);

  /// Create a copy of PlantSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPlantListImplCopyWith<_$LoadPlantListImpl> get copyWith =>
      __$$LoadPlantListImplCopyWithImpl<_$LoadPlantListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, bool refresh) loadPlantList,
  }) {
    return loadPlantList(name, refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, bool refresh)? loadPlantList,
  }) {
    return loadPlantList?.call(name, refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, bool refresh)? loadPlantList,
    required TResult orElse(),
  }) {
    if (loadPlantList != null) {
      return loadPlantList(name, refresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPlantList value) loadPlantList,
  }) {
    return loadPlantList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPlantList value)? loadPlantList,
  }) {
    return loadPlantList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPlantList value)? loadPlantList,
    required TResult orElse(),
  }) {
    if (loadPlantList != null) {
      return loadPlantList(this);
    }
    return orElse();
  }
}

abstract class _LoadPlantList implements PlantSearchEvent {
  const factory _LoadPlantList({final String? name, final bool refresh}) =
      _$LoadPlantListImpl;

  @override
  String? get name;
  @override
  bool get refresh;

  /// Create a copy of PlantSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadPlantListImplCopyWith<_$LoadPlantListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlantSearchState {
  String? get name => throw _privateConstructorUsedError;
  bool get isPaginating => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  List<PlantSearchItem> get items => throw _privateConstructorUsedError;

  /// Create a copy of PlantSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantSearchStateCopyWith<PlantSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantSearchStateCopyWith<$Res> {
  factory $PlantSearchStateCopyWith(
          PlantSearchState value, $Res Function(PlantSearchState) then) =
      _$PlantSearchStateCopyWithImpl<$Res, PlantSearchState>;
  @useResult
  $Res call(
      {String? name,
      bool isPaginating,
      bool hasReachedEnd,
      Status status,
      List<PlantSearchItem> items});
}

/// @nodoc
class _$PlantSearchStateCopyWithImpl<$Res, $Val extends PlantSearchState>
    implements $PlantSearchStateCopyWith<$Res> {
  _$PlantSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isPaginating = null,
    Object? hasReachedEnd = null,
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaginating: null == isPaginating
          ? _value.isPaginating
          : isPaginating // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlantSearchItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantSearchStateImplCopyWith<$Res>
    implements $PlantSearchStateCopyWith<$Res> {
  factory _$$PlantSearchStateImplCopyWith(_$PlantSearchStateImpl value,
          $Res Function(_$PlantSearchStateImpl) then) =
      __$$PlantSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      bool isPaginating,
      bool hasReachedEnd,
      Status status,
      List<PlantSearchItem> items});
}

/// @nodoc
class __$$PlantSearchStateImplCopyWithImpl<$Res>
    extends _$PlantSearchStateCopyWithImpl<$Res, _$PlantSearchStateImpl>
    implements _$$PlantSearchStateImplCopyWith<$Res> {
  __$$PlantSearchStateImplCopyWithImpl(_$PlantSearchStateImpl _value,
      $Res Function(_$PlantSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isPaginating = null,
    Object? hasReachedEnd = null,
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_$PlantSearchStateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaginating: null == isPaginating
          ? _value.isPaginating
          : isPaginating // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlantSearchItem>,
    ));
  }
}

/// @nodoc

class _$PlantSearchStateImpl implements _PlantSearchState {
  const _$PlantSearchStateImpl(
      {this.name,
      this.isPaginating = false,
      this.hasReachedEnd = false,
      this.status = Status.loading,
      final List<PlantSearchItem> items = const []})
      : _items = items;

  @override
  final String? name;
  @override
  @JsonKey()
  final bool isPaginating;
  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  @JsonKey()
  final Status status;
  final List<PlantSearchItem> _items;
  @override
  @JsonKey()
  List<PlantSearchItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PlantSearchState(name: $name, isPaginating: $isPaginating, hasReachedEnd: $hasReachedEnd, status: $status, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantSearchStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPaginating, isPaginating) ||
                other.isPaginating == isPaginating) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isPaginating,
      hasReachedEnd, status, const DeepCollectionEquality().hash(_items));

  /// Create a copy of PlantSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantSearchStateImplCopyWith<_$PlantSearchStateImpl> get copyWith =>
      __$$PlantSearchStateImplCopyWithImpl<_$PlantSearchStateImpl>(
          this, _$identity);
}

abstract class _PlantSearchState implements PlantSearchState {
  const factory _PlantSearchState(
      {final String? name,
      final bool isPaginating,
      final bool hasReachedEnd,
      final Status status,
      final List<PlantSearchItem> items}) = _$PlantSearchStateImpl;

  @override
  String? get name;
  @override
  bool get isPaginating;
  @override
  bool get hasReachedEnd;
  @override
  Status get status;
  @override
  List<PlantSearchItem> get items;

  /// Create a copy of PlantSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantSearchStateImplCopyWith<_$PlantSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
