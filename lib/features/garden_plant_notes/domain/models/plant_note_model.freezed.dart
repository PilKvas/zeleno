// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlantNoteModel _$PlantNoteModelFromJson(Map<String, dynamic> json) {
  return _PlantNoteModel.fromJson(json);
}

/// @nodoc
mixin _$PlantNoteModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'plant_id')
  int get plantId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PlantNoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantNoteModelCopyWith<PlantNoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantNoteModelCopyWith<$Res> {
  factory $PlantNoteModelCopyWith(
    PlantNoteModel value,
    $Res Function(PlantNoteModel) then,
  ) = _$PlantNoteModelCopyWithImpl<$Res, PlantNoteModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'plant_id') int plantId,
    String title,
    String content,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class _$PlantNoteModelCopyWithImpl<$Res, $Val extends PlantNoteModel>
    implements $PlantNoteModelCopyWith<$Res> {
  _$PlantNoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plantId = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            plantId: null == plantId
                ? _value.plantId
                : plantId // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlantNoteModelImplCopyWith<$Res>
    implements $PlantNoteModelCopyWith<$Res> {
  factory _$$PlantNoteModelImplCopyWith(
    _$PlantNoteModelImpl value,
    $Res Function(_$PlantNoteModelImpl) then,
  ) = __$$PlantNoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'plant_id') int plantId,
    String title,
    String content,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class __$$PlantNoteModelImplCopyWithImpl<$Res>
    extends _$PlantNoteModelCopyWithImpl<$Res, _$PlantNoteModelImpl>
    implements _$$PlantNoteModelImplCopyWith<$Res> {
  __$$PlantNoteModelImplCopyWithImpl(
    _$PlantNoteModelImpl _value,
    $Res Function(_$PlantNoteModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlantNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plantId = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$PlantNoteModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        plantId: null == plantId
            ? _value.plantId
            : plantId // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantNoteModelImpl implements _PlantNoteModel {
  const _$PlantNoteModelImpl({
    required this.id,
    @JsonKey(name: 'plant_id') required this.plantId,
    required this.title,
    required this.content,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  });

  factory _$PlantNoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantNoteModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'plant_id')
  final int plantId;
  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'PlantNoteModel(id: $id, plantId: $plantId, title: $title, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantNoteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    plantId,
    title,
    content,
    createdAt,
    updatedAt,
  );

  /// Create a copy of PlantNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantNoteModelImplCopyWith<_$PlantNoteModelImpl> get copyWith =>
      __$$PlantNoteModelImplCopyWithImpl<_$PlantNoteModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantNoteModelImplToJson(this);
  }
}

abstract class _PlantNoteModel implements PlantNoteModel {
  const factory _PlantNoteModel({
    required final int id,
    @JsonKey(name: 'plant_id') required final int plantId,
    required final String title,
    required final String content,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
  }) = _$PlantNoteModelImpl;

  factory _PlantNoteModel.fromJson(Map<String, dynamic> json) =
      _$PlantNoteModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'plant_id')
  int get plantId;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of PlantNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantNoteModelImplCopyWith<_$PlantNoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
