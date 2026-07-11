// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garden_plants_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GardenPlantsListState {
  Status get status => throw _privateConstructorUsedError;
  List<GardenPlantModel> get plants => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  int? get selectedRoomId => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;

  /// Create a copy of GardenPlantsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GardenPlantsListStateCopyWith<GardenPlantsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GardenPlantsListStateCopyWith<$Res> {
  factory $GardenPlantsListStateCopyWith(GardenPlantsListState value,
          $Res Function(GardenPlantsListState) then) =
      _$GardenPlantsListStateCopyWithImpl<$Res, GardenPlantsListState>;
  @useResult
  $Res call(
      {Status status,
      List<GardenPlantModel> plants,
      Object? error,
      int? selectedRoomId,
      bool isRefreshing});
}

/// @nodoc
class _$GardenPlantsListStateCopyWithImpl<$Res,
        $Val extends GardenPlantsListState>
    implements $GardenPlantsListStateCopyWith<$Res> {
  _$GardenPlantsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GardenPlantsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? plants = null,
    Object? error = freezed,
    Object? selectedRoomId = freezed,
    Object? isRefreshing = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      plants: null == plants
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<GardenPlantModel>,
      error: freezed == error ? _value.error : error,
      selectedRoomId: freezed == selectedRoomId
          ? _value.selectedRoomId
          : selectedRoomId // ignore: cast_nullable_to_non_nullable
              as int?,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GardenPlantsListStateImplCopyWith<$Res>
    implements $GardenPlantsListStateCopyWith<$Res> {
  factory _$$GardenPlantsListStateImplCopyWith(
          _$GardenPlantsListStateImpl value,
          $Res Function(_$GardenPlantsListStateImpl) then) =
      __$$GardenPlantsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      List<GardenPlantModel> plants,
      Object? error,
      int? selectedRoomId,
      bool isRefreshing});
}

/// @nodoc
class __$$GardenPlantsListStateImplCopyWithImpl<$Res>
    extends _$GardenPlantsListStateCopyWithImpl<$Res,
        _$GardenPlantsListStateImpl>
    implements _$$GardenPlantsListStateImplCopyWith<$Res> {
  __$$GardenPlantsListStateImplCopyWithImpl(_$GardenPlantsListStateImpl _value,
      $Res Function(_$GardenPlantsListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GardenPlantsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? plants = null,
    Object? error = freezed,
    Object? selectedRoomId = freezed,
    Object? isRefreshing = null,
  }) {
    return _then(_$GardenPlantsListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      plants: null == plants
          ? _value._plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<GardenPlantModel>,
      error: freezed == error ? _value.error : error,
      selectedRoomId: freezed == selectedRoomId
          ? _value.selectedRoomId
          : selectedRoomId // ignore: cast_nullable_to_non_nullable
              as int?,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GardenPlantsListStateImpl extends _GardenPlantsListState {
  const _$GardenPlantsListStateImpl(
      {required this.status,
      final List<GardenPlantModel> plants = const <GardenPlantModel>[],
      this.error,
      this.selectedRoomId,
      this.isRefreshing = false})
      : _plants = plants,
        super._();

  @override
  final Status status;
  final List<GardenPlantModel> _plants;
  @override
  @JsonKey()
  List<GardenPlantModel> get plants {
    if (_plants is EqualUnmodifiableListView) return _plants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plants);
  }

  @override
  final Object? error;
  @override
  final int? selectedRoomId;
  @override
  @JsonKey()
  final bool isRefreshing;

  @override
  String toString() {
    return 'GardenPlantsListState(status: $status, plants: $plants, error: $error, selectedRoomId: $selectedRoomId, isRefreshing: $isRefreshing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GardenPlantsListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._plants, _plants) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.selectedRoomId, selectedRoomId) ||
                other.selectedRoomId == selectedRoomId) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_plants),
      const DeepCollectionEquality().hash(error),
      selectedRoomId,
      isRefreshing);

  /// Create a copy of GardenPlantsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GardenPlantsListStateImplCopyWith<_$GardenPlantsListStateImpl>
      get copyWith => __$$GardenPlantsListStateImplCopyWithImpl<
          _$GardenPlantsListStateImpl>(this, _$identity);
}

abstract class _GardenPlantsListState extends GardenPlantsListState {
  const factory _GardenPlantsListState(
      {required final Status status,
      final List<GardenPlantModel> plants,
      final Object? error,
      final int? selectedRoomId,
      final bool isRefreshing}) = _$GardenPlantsListStateImpl;
  const _GardenPlantsListState._() : super._();

  @override
  Status get status;
  @override
  List<GardenPlantModel> get plants;
  @override
  Object? get error;
  @override
  int? get selectedRoomId;
  @override
  bool get isRefreshing;

  /// Create a copy of GardenPlantsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GardenPlantsListStateImplCopyWith<_$GardenPlantsListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
