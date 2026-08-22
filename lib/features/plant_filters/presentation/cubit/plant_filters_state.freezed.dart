// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_filters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlantFiltersState {
  FiltersStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  List<PlantFilterItem> get soilPhChoices => throw _privateConstructorUsedError;
  List<PlantFilterItem> get soilMoistureChoices =>
      throw _privateConstructorUsedError;
  PlantSearchFilters get selected => throw _privateConstructorUsedError;

  /// Create a copy of PlantFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantFiltersStateCopyWith<PlantFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantFiltersStateCopyWith<$Res> {
  factory $PlantFiltersStateCopyWith(
    PlantFiltersState value,
    $Res Function(PlantFiltersState) then,
  ) = _$PlantFiltersStateCopyWithImpl<$Res, PlantFiltersState>;
  @useResult
  $Res call({
    FiltersStatus status,
    Object? error,
    List<PlantFilterItem> soilPhChoices,
    List<PlantFilterItem> soilMoistureChoices,
    PlantSearchFilters selected,
  });

  $PlantSearchFiltersCopyWith<$Res> get selected;
}

/// @nodoc
class _$PlantFiltersStateCopyWithImpl<$Res, $Val extends PlantFiltersState>
    implements $PlantFiltersStateCopyWith<$Res> {
  _$PlantFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? soilPhChoices = null,
    Object? soilMoistureChoices = null,
    Object? selected = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as FiltersStatus,
            error: freezed == error ? _value.error : error,
            soilPhChoices: null == soilPhChoices
                ? _value.soilPhChoices
                : soilPhChoices // ignore: cast_nullable_to_non_nullable
                      as List<PlantFilterItem>,
            soilMoistureChoices: null == soilMoistureChoices
                ? _value.soilMoistureChoices
                : soilMoistureChoices // ignore: cast_nullable_to_non_nullable
                      as List<PlantFilterItem>,
            selected: null == selected
                ? _value.selected
                : selected // ignore: cast_nullable_to_non_nullable
                      as PlantSearchFilters,
          )
          as $Val,
    );
  }

  /// Create a copy of PlantFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlantSearchFiltersCopyWith<$Res> get selected {
    return $PlantSearchFiltersCopyWith<$Res>(_value.selected, (value) {
      return _then(_value.copyWith(selected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlantFiltersStateImplCopyWith<$Res>
    implements $PlantFiltersStateCopyWith<$Res> {
  factory _$$PlantFiltersStateImplCopyWith(
    _$PlantFiltersStateImpl value,
    $Res Function(_$PlantFiltersStateImpl) then,
  ) = __$$PlantFiltersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FiltersStatus status,
    Object? error,
    List<PlantFilterItem> soilPhChoices,
    List<PlantFilterItem> soilMoistureChoices,
    PlantSearchFilters selected,
  });

  @override
  $PlantSearchFiltersCopyWith<$Res> get selected;
}

/// @nodoc
class __$$PlantFiltersStateImplCopyWithImpl<$Res>
    extends _$PlantFiltersStateCopyWithImpl<$Res, _$PlantFiltersStateImpl>
    implements _$$PlantFiltersStateImplCopyWith<$Res> {
  __$$PlantFiltersStateImplCopyWithImpl(
    _$PlantFiltersStateImpl _value,
    $Res Function(_$PlantFiltersStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlantFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? soilPhChoices = null,
    Object? soilMoistureChoices = null,
    Object? selected = null,
  }) {
    return _then(
      _$PlantFiltersStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as FiltersStatus,
        error: freezed == error ? _value.error : error,
        soilPhChoices: null == soilPhChoices
            ? _value._soilPhChoices
            : soilPhChoices // ignore: cast_nullable_to_non_nullable
                  as List<PlantFilterItem>,
        soilMoistureChoices: null == soilMoistureChoices
            ? _value._soilMoistureChoices
            : soilMoistureChoices // ignore: cast_nullable_to_non_nullable
                  as List<PlantFilterItem>,
        selected: null == selected
            ? _value.selected
            : selected // ignore: cast_nullable_to_non_nullable
                  as PlantSearchFilters,
      ),
    );
  }
}

/// @nodoc

class _$PlantFiltersStateImpl implements _PlantFiltersState {
  const _$PlantFiltersStateImpl({
    this.status = FiltersStatus.initial,
    this.error,
    final List<PlantFilterItem> soilPhChoices = const <PlantFilterItem>[],
    final List<PlantFilterItem> soilMoistureChoices = const <PlantFilterItem>[],
    this.selected = const PlantSearchFilters(),
  }) : _soilPhChoices = soilPhChoices,
       _soilMoistureChoices = soilMoistureChoices;

  @override
  @JsonKey()
  final FiltersStatus status;
  @override
  final Object? error;
  final List<PlantFilterItem> _soilPhChoices;
  @override
  @JsonKey()
  List<PlantFilterItem> get soilPhChoices {
    if (_soilPhChoices is EqualUnmodifiableListView) return _soilPhChoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_soilPhChoices);
  }

  final List<PlantFilterItem> _soilMoistureChoices;
  @override
  @JsonKey()
  List<PlantFilterItem> get soilMoistureChoices {
    if (_soilMoistureChoices is EqualUnmodifiableListView)
      return _soilMoistureChoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_soilMoistureChoices);
  }

  @override
  @JsonKey()
  final PlantSearchFilters selected;

  @override
  String toString() {
    return 'PlantFiltersState(status: $status, error: $error, soilPhChoices: $soilPhChoices, soilMoistureChoices: $soilMoistureChoices, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantFiltersStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(
              other._soilPhChoices,
              _soilPhChoices,
            ) &&
            const DeepCollectionEquality().equals(
              other._soilMoistureChoices,
              _soilMoistureChoices,
            ) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(error),
    const DeepCollectionEquality().hash(_soilPhChoices),
    const DeepCollectionEquality().hash(_soilMoistureChoices),
    selected,
  );

  /// Create a copy of PlantFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantFiltersStateImplCopyWith<_$PlantFiltersStateImpl> get copyWith =>
      __$$PlantFiltersStateImplCopyWithImpl<_$PlantFiltersStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PlantFiltersState implements PlantFiltersState {
  const factory _PlantFiltersState({
    final FiltersStatus status,
    final Object? error,
    final List<PlantFilterItem> soilPhChoices,
    final List<PlantFilterItem> soilMoistureChoices,
    final PlantSearchFilters selected,
  }) = _$PlantFiltersStateImpl;

  @override
  FiltersStatus get status;
  @override
  Object? get error;
  @override
  List<PlantFilterItem> get soilPhChoices;
  @override
  List<PlantFilterItem> get soilMoistureChoices;
  @override
  PlantSearchFilters get selected;

  /// Create a copy of PlantFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantFiltersStateImplCopyWith<_$PlantFiltersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
