// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_search_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlantSearchFilters {
  String? get searchQuery => throw _privateConstructorUsedError;
  double? get heightFrom => throw _privateConstructorUsedError;
  double? get heightTo => throw _privateConstructorUsedError;

  /// Create a copy of PlantSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantSearchFiltersCopyWith<PlantSearchFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantSearchFiltersCopyWith<$Res> {
  factory $PlantSearchFiltersCopyWith(
          PlantSearchFilters value, $Res Function(PlantSearchFilters) then) =
      _$PlantSearchFiltersCopyWithImpl<$Res, PlantSearchFilters>;
  @useResult
  $Res call({String? searchQuery, double? heightFrom, double? heightTo});
}

/// @nodoc
class _$PlantSearchFiltersCopyWithImpl<$Res, $Val extends PlantSearchFilters>
    implements $PlantSearchFiltersCopyWith<$Res> {
  _$PlantSearchFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? heightFrom = freezed,
    Object? heightTo = freezed,
  }) {
    return _then(_value.copyWith(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      heightFrom: freezed == heightFrom
          ? _value.heightFrom
          : heightFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      heightTo: freezed == heightTo
          ? _value.heightTo
          : heightTo // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantSearchFiltersImplCopyWith<$Res>
    implements $PlantSearchFiltersCopyWith<$Res> {
  factory _$$PlantSearchFiltersImplCopyWith(_$PlantSearchFiltersImpl value,
          $Res Function(_$PlantSearchFiltersImpl) then) =
      __$$PlantSearchFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? searchQuery, double? heightFrom, double? heightTo});
}

/// @nodoc
class __$$PlantSearchFiltersImplCopyWithImpl<$Res>
    extends _$PlantSearchFiltersCopyWithImpl<$Res, _$PlantSearchFiltersImpl>
    implements _$$PlantSearchFiltersImplCopyWith<$Res> {
  __$$PlantSearchFiltersImplCopyWithImpl(_$PlantSearchFiltersImpl _value,
      $Res Function(_$PlantSearchFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? heightFrom = freezed,
    Object? heightTo = freezed,
  }) {
    return _then(_$PlantSearchFiltersImpl(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      heightFrom: freezed == heightFrom
          ? _value.heightFrom
          : heightFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      heightTo: freezed == heightTo
          ? _value.heightTo
          : heightTo // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$PlantSearchFiltersImpl extends _PlantSearchFilters {
  const _$PlantSearchFiltersImpl(
      {this.searchQuery, this.heightFrom, this.heightTo})
      : super._();

  @override
  final String? searchQuery;
  @override
  final double? heightFrom;
  @override
  final double? heightTo;

  @override
  String toString() {
    return 'PlantSearchFilters(searchQuery: $searchQuery, heightFrom: $heightFrom, heightTo: $heightTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantSearchFiltersImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.heightFrom, heightFrom) ||
                other.heightFrom == heightFrom) &&
            (identical(other.heightTo, heightTo) ||
                other.heightTo == heightTo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, searchQuery, heightFrom, heightTo);

  /// Create a copy of PlantSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantSearchFiltersImplCopyWith<_$PlantSearchFiltersImpl> get copyWith =>
      __$$PlantSearchFiltersImplCopyWithImpl<_$PlantSearchFiltersImpl>(
          this, _$identity);
}

abstract class _PlantSearchFilters extends PlantSearchFilters {
  const factory _PlantSearchFilters(
      {final String? searchQuery,
      final double? heightFrom,
      final double? heightTo}) = _$PlantSearchFiltersImpl;
  const _PlantSearchFilters._() : super._();

  @override
  String? get searchQuery;
  @override
  double? get heightFrom;
  @override
  double? get heightTo;

  /// Create a copy of PlantSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantSearchFiltersImplCopyWith<_$PlantSearchFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
