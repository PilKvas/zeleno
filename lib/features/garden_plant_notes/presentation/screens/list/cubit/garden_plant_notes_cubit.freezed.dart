// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garden_plant_notes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GardenPlantNotesState {
  Status get status => throw _privateConstructorUsedError;
  int get plantId => throw _privateConstructorUsedError;
  List<PlantNoteModel> get notes => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of GardenPlantNotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GardenPlantNotesStateCopyWith<GardenPlantNotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GardenPlantNotesStateCopyWith<$Res> {
  factory $GardenPlantNotesStateCopyWith(
    GardenPlantNotesState value,
    $Res Function(GardenPlantNotesState) then,
  ) = _$GardenPlantNotesStateCopyWithImpl<$Res, GardenPlantNotesState>;
  @useResult
  $Res call({
    Status status,
    int plantId,
    List<PlantNoteModel> notes,
    Object? error,
  });
}

/// @nodoc
class _$GardenPlantNotesStateCopyWithImpl<
  $Res,
  $Val extends GardenPlantNotesState
>
    implements $GardenPlantNotesStateCopyWith<$Res> {
  _$GardenPlantNotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GardenPlantNotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? plantId = null,
    Object? notes = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            plantId: null == plantId
                ? _value.plantId
                : plantId // ignore: cast_nullable_to_non_nullable
                      as int,
            notes: null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as List<PlantNoteModel>,
            error: freezed == error ? _value.error : error,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GardenPlantNotesStateImplCopyWith<$Res>
    implements $GardenPlantNotesStateCopyWith<$Res> {
  factory _$$GardenPlantNotesStateImplCopyWith(
    _$GardenPlantNotesStateImpl value,
    $Res Function(_$GardenPlantNotesStateImpl) then,
  ) = __$$GardenPlantNotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    int plantId,
    List<PlantNoteModel> notes,
    Object? error,
  });
}

/// @nodoc
class __$$GardenPlantNotesStateImplCopyWithImpl<$Res>
    extends
        _$GardenPlantNotesStateCopyWithImpl<$Res, _$GardenPlantNotesStateImpl>
    implements _$$GardenPlantNotesStateImplCopyWith<$Res> {
  __$$GardenPlantNotesStateImplCopyWithImpl(
    _$GardenPlantNotesStateImpl _value,
    $Res Function(_$GardenPlantNotesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GardenPlantNotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? plantId = null,
    Object? notes = null,
    Object? error = freezed,
  }) {
    return _then(
      _$GardenPlantNotesStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        plantId: null == plantId
            ? _value.plantId
            : plantId // ignore: cast_nullable_to_non_nullable
                  as int,
        notes: null == notes
            ? _value._notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as List<PlantNoteModel>,
        error: freezed == error ? _value.error : error,
      ),
    );
  }
}

/// @nodoc

class _$GardenPlantNotesStateImpl implements _GardenPlantNotesState {
  const _$GardenPlantNotesStateImpl({
    required this.status,
    required this.plantId,
    final List<PlantNoteModel> notes = const <PlantNoteModel>[],
    this.error,
  }) : _notes = notes;

  @override
  final Status status;
  @override
  final int plantId;
  final List<PlantNoteModel> _notes;
  @override
  @JsonKey()
  List<PlantNoteModel> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'GardenPlantNotesState(status: $status, plantId: $plantId, notes: $notes, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GardenPlantNotesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    plantId,
    const DeepCollectionEquality().hash(_notes),
    const DeepCollectionEquality().hash(error),
  );

  /// Create a copy of GardenPlantNotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GardenPlantNotesStateImplCopyWith<_$GardenPlantNotesStateImpl>
  get copyWith =>
      __$$GardenPlantNotesStateImplCopyWithImpl<_$GardenPlantNotesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _GardenPlantNotesState implements GardenPlantNotesState {
  const factory _GardenPlantNotesState({
    required final Status status,
    required final int plantId,
    final List<PlantNoteModel> notes,
    final Object? error,
  }) = _$GardenPlantNotesStateImpl;

  @override
  Status get status;
  @override
  int get plantId;
  @override
  List<PlantNoteModel> get notes;
  @override
  Object? get error;

  /// Create a copy of GardenPlantNotesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GardenPlantNotesStateImplCopyWith<_$GardenPlantNotesStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
