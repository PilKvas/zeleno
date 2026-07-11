// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_garden_plant_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddGardenPlantState {
  Status get status => throw _privateConstructorUsedError;
  int get speciesId => throw _privateConstructorUsedError;
  int get roomId => throw _privateConstructorUsedError;
  int? get plantId => throw _privateConstructorUsedError;
  GardenPlantModel? get editingPlant => throw _privateConstructorUsedError;
  String get customName => throw _privateConstructorUsedError;
  Uint8List? get photoBytes => throw _privateConstructorUsedError;
  String? get photoFileName => throw _privateConstructorUsedError;
  String? get existingImageUrl => throw _privateConstructorUsedError;
  bool get removeExistingPhoto => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  AddGardenPlantValidationError? get validationError =>
      throw _privateConstructorUsedError;
  GardenPlantModel? get createdPlant => throw _privateConstructorUsedError;
  bool get imageUploadFailed => throw _privateConstructorUsedError;
  bool get wasUpdated => throw _privateConstructorUsedError;

  /// Create a copy of AddGardenPlantState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddGardenPlantStateCopyWith<AddGardenPlantState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGardenPlantStateCopyWith<$Res> {
  factory $AddGardenPlantStateCopyWith(
          AddGardenPlantState value, $Res Function(AddGardenPlantState) then) =
      _$AddGardenPlantStateCopyWithImpl<$Res, AddGardenPlantState>;
  @useResult
  $Res call(
      {Status status,
      int speciesId,
      int roomId,
      int? plantId,
      GardenPlantModel? editingPlant,
      String customName,
      Uint8List? photoBytes,
      String? photoFileName,
      String? existingImageUrl,
      bool removeExistingPhoto,
      Object? error,
      AddGardenPlantValidationError? validationError,
      GardenPlantModel? createdPlant,
      bool imageUploadFailed,
      bool wasUpdated});

  $GardenPlantModelCopyWith<$Res>? get editingPlant;
  $GardenPlantModelCopyWith<$Res>? get createdPlant;
}

/// @nodoc
class _$AddGardenPlantStateCopyWithImpl<$Res, $Val extends AddGardenPlantState>
    implements $AddGardenPlantStateCopyWith<$Res> {
  _$AddGardenPlantStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddGardenPlantState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? speciesId = null,
    Object? roomId = null,
    Object? plantId = freezed,
    Object? editingPlant = freezed,
    Object? customName = null,
    Object? photoBytes = freezed,
    Object? photoFileName = freezed,
    Object? existingImageUrl = freezed,
    Object? removeExistingPhoto = null,
    Object? error = freezed,
    Object? validationError = freezed,
    Object? createdPlant = freezed,
    Object? imageUploadFailed = null,
    Object? wasUpdated = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as int,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      plantId: freezed == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as int?,
      editingPlant: freezed == editingPlant
          ? _value.editingPlant
          : editingPlant // ignore: cast_nullable_to_non_nullable
              as GardenPlantModel?,
      customName: null == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
      photoBytes: freezed == photoBytes
          ? _value.photoBytes
          : photoBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      photoFileName: freezed == photoFileName
          ? _value.photoFileName
          : photoFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      existingImageUrl: freezed == existingImageUrl
          ? _value.existingImageUrl
          : existingImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      removeExistingPhoto: null == removeExistingPhoto
          ? _value.removeExistingPhoto
          : removeExistingPhoto // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      validationError: freezed == validationError
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as AddGardenPlantValidationError?,
      createdPlant: freezed == createdPlant
          ? _value.createdPlant
          : createdPlant // ignore: cast_nullable_to_non_nullable
              as GardenPlantModel?,
      imageUploadFailed: null == imageUploadFailed
          ? _value.imageUploadFailed
          : imageUploadFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      wasUpdated: null == wasUpdated
          ? _value.wasUpdated
          : wasUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of AddGardenPlantState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GardenPlantModelCopyWith<$Res>? get editingPlant {
    if (_value.editingPlant == null) {
      return null;
    }

    return $GardenPlantModelCopyWith<$Res>(_value.editingPlant!, (value) {
      return _then(_value.copyWith(editingPlant: value) as $Val);
    });
  }

  /// Create a copy of AddGardenPlantState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GardenPlantModelCopyWith<$Res>? get createdPlant {
    if (_value.createdPlant == null) {
      return null;
    }

    return $GardenPlantModelCopyWith<$Res>(_value.createdPlant!, (value) {
      return _then(_value.copyWith(createdPlant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddGardenPlantStateImplCopyWith<$Res>
    implements $AddGardenPlantStateCopyWith<$Res> {
  factory _$$AddGardenPlantStateImplCopyWith(_$AddGardenPlantStateImpl value,
          $Res Function(_$AddGardenPlantStateImpl) then) =
      __$$AddGardenPlantStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      int speciesId,
      int roomId,
      int? plantId,
      GardenPlantModel? editingPlant,
      String customName,
      Uint8List? photoBytes,
      String? photoFileName,
      String? existingImageUrl,
      bool removeExistingPhoto,
      Object? error,
      AddGardenPlantValidationError? validationError,
      GardenPlantModel? createdPlant,
      bool imageUploadFailed,
      bool wasUpdated});

  @override
  $GardenPlantModelCopyWith<$Res>? get editingPlant;
  @override
  $GardenPlantModelCopyWith<$Res>? get createdPlant;
}

/// @nodoc
class __$$AddGardenPlantStateImplCopyWithImpl<$Res>
    extends _$AddGardenPlantStateCopyWithImpl<$Res, _$AddGardenPlantStateImpl>
    implements _$$AddGardenPlantStateImplCopyWith<$Res> {
  __$$AddGardenPlantStateImplCopyWithImpl(_$AddGardenPlantStateImpl _value,
      $Res Function(_$AddGardenPlantStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddGardenPlantState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? speciesId = null,
    Object? roomId = null,
    Object? plantId = freezed,
    Object? editingPlant = freezed,
    Object? customName = null,
    Object? photoBytes = freezed,
    Object? photoFileName = freezed,
    Object? existingImageUrl = freezed,
    Object? removeExistingPhoto = null,
    Object? error = freezed,
    Object? validationError = freezed,
    Object? createdPlant = freezed,
    Object? imageUploadFailed = null,
    Object? wasUpdated = null,
  }) {
    return _then(_$AddGardenPlantStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as int,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      plantId: freezed == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as int?,
      editingPlant: freezed == editingPlant
          ? _value.editingPlant
          : editingPlant // ignore: cast_nullable_to_non_nullable
              as GardenPlantModel?,
      customName: null == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
      photoBytes: freezed == photoBytes
          ? _value.photoBytes
          : photoBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      photoFileName: freezed == photoFileName
          ? _value.photoFileName
          : photoFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      existingImageUrl: freezed == existingImageUrl
          ? _value.existingImageUrl
          : existingImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      removeExistingPhoto: null == removeExistingPhoto
          ? _value.removeExistingPhoto
          : removeExistingPhoto // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      validationError: freezed == validationError
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as AddGardenPlantValidationError?,
      createdPlant: freezed == createdPlant
          ? _value.createdPlant
          : createdPlant // ignore: cast_nullable_to_non_nullable
              as GardenPlantModel?,
      imageUploadFailed: null == imageUploadFailed
          ? _value.imageUploadFailed
          : imageUploadFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      wasUpdated: null == wasUpdated
          ? _value.wasUpdated
          : wasUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddGardenPlantStateImpl implements _AddGardenPlantState {
  const _$AddGardenPlantStateImpl(
      {required this.status,
      required this.speciesId,
      required this.roomId,
      this.plantId,
      this.editingPlant,
      this.customName = '',
      this.photoBytes,
      this.photoFileName,
      this.existingImageUrl,
      this.removeExistingPhoto = false,
      this.error,
      this.validationError,
      this.createdPlant,
      this.imageUploadFailed = false,
      this.wasUpdated = false});

  @override
  final Status status;
  @override
  final int speciesId;
  @override
  final int roomId;
  @override
  final int? plantId;
  @override
  final GardenPlantModel? editingPlant;
  @override
  @JsonKey()
  final String customName;
  @override
  final Uint8List? photoBytes;
  @override
  final String? photoFileName;
  @override
  final String? existingImageUrl;
  @override
  @JsonKey()
  final bool removeExistingPhoto;
  @override
  final Object? error;
  @override
  final AddGardenPlantValidationError? validationError;
  @override
  final GardenPlantModel? createdPlant;
  @override
  @JsonKey()
  final bool imageUploadFailed;
  @override
  @JsonKey()
  final bool wasUpdated;

  @override
  String toString() {
    return 'AddGardenPlantState(status: $status, speciesId: $speciesId, roomId: $roomId, plantId: $plantId, editingPlant: $editingPlant, customName: $customName, photoBytes: $photoBytes, photoFileName: $photoFileName, existingImageUrl: $existingImageUrl, removeExistingPhoto: $removeExistingPhoto, error: $error, validationError: $validationError, createdPlant: $createdPlant, imageUploadFailed: $imageUploadFailed, wasUpdated: $wasUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGardenPlantStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.editingPlant, editingPlant) ||
                other.editingPlant == editingPlant) &&
            (identical(other.customName, customName) ||
                other.customName == customName) &&
            const DeepCollectionEquality()
                .equals(other.photoBytes, photoBytes) &&
            (identical(other.photoFileName, photoFileName) ||
                other.photoFileName == photoFileName) &&
            (identical(other.existingImageUrl, existingImageUrl) ||
                other.existingImageUrl == existingImageUrl) &&
            (identical(other.removeExistingPhoto, removeExistingPhoto) ||
                other.removeExistingPhoto == removeExistingPhoto) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.validationError, validationError) ||
                other.validationError == validationError) &&
            (identical(other.createdPlant, createdPlant) ||
                other.createdPlant == createdPlant) &&
            (identical(other.imageUploadFailed, imageUploadFailed) ||
                other.imageUploadFailed == imageUploadFailed) &&
            (identical(other.wasUpdated, wasUpdated) ||
                other.wasUpdated == wasUpdated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      speciesId,
      roomId,
      plantId,
      editingPlant,
      customName,
      const DeepCollectionEquality().hash(photoBytes),
      photoFileName,
      existingImageUrl,
      removeExistingPhoto,
      const DeepCollectionEquality().hash(error),
      validationError,
      createdPlant,
      imageUploadFailed,
      wasUpdated);

  /// Create a copy of AddGardenPlantState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGardenPlantStateImplCopyWith<_$AddGardenPlantStateImpl> get copyWith =>
      __$$AddGardenPlantStateImplCopyWithImpl<_$AddGardenPlantStateImpl>(
          this, _$identity);
}

abstract class _AddGardenPlantState implements AddGardenPlantState {
  const factory _AddGardenPlantState(
      {required final Status status,
      required final int speciesId,
      required final int roomId,
      final int? plantId,
      final GardenPlantModel? editingPlant,
      final String customName,
      final Uint8List? photoBytes,
      final String? photoFileName,
      final String? existingImageUrl,
      final bool removeExistingPhoto,
      final Object? error,
      final AddGardenPlantValidationError? validationError,
      final GardenPlantModel? createdPlant,
      final bool imageUploadFailed,
      final bool wasUpdated}) = _$AddGardenPlantStateImpl;

  @override
  Status get status;
  @override
  int get speciesId;
  @override
  int get roomId;
  @override
  int? get plantId;
  @override
  GardenPlantModel? get editingPlant;
  @override
  String get customName;
  @override
  Uint8List? get photoBytes;
  @override
  String? get photoFileName;
  @override
  String? get existingImageUrl;
  @override
  bool get removeExistingPhoto;
  @override
  Object? get error;
  @override
  AddGardenPlantValidationError? get validationError;
  @override
  GardenPlantModel? get createdPlant;
  @override
  bool get imageUploadFailed;
  @override
  bool get wasUpdated;

  /// Create a copy of AddGardenPlantState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddGardenPlantStateImplCopyWith<_$AddGardenPlantStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
