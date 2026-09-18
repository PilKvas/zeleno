// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_plant_note_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpdatePlantNoteBody _$UpdatePlantNoteBodyFromJson(Map<String, dynamic> json) {
  return _UpdatePlantNoteBody.fromJson(json);
}

/// @nodoc
mixin _$UpdatePlantNoteBody {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this UpdatePlantNoteBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePlantNoteBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePlantNoteBodyCopyWith<UpdatePlantNoteBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePlantNoteBodyCopyWith<$Res> {
  factory $UpdatePlantNoteBodyCopyWith(
    UpdatePlantNoteBody value,
    $Res Function(UpdatePlantNoteBody) then,
  ) = _$UpdatePlantNoteBodyCopyWithImpl<$Res, UpdatePlantNoteBody>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$UpdatePlantNoteBodyCopyWithImpl<$Res, $Val extends UpdatePlantNoteBody>
    implements $UpdatePlantNoteBodyCopyWith<$Res> {
  _$UpdatePlantNoteBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePlantNoteBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? content = null}) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdatePlantNoteBodyImplCopyWith<$Res>
    implements $UpdatePlantNoteBodyCopyWith<$Res> {
  factory _$$UpdatePlantNoteBodyImplCopyWith(
    _$UpdatePlantNoteBodyImpl value,
    $Res Function(_$UpdatePlantNoteBodyImpl) then,
  ) = __$$UpdatePlantNoteBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$UpdatePlantNoteBodyImplCopyWithImpl<$Res>
    extends _$UpdatePlantNoteBodyCopyWithImpl<$Res, _$UpdatePlantNoteBodyImpl>
    implements _$$UpdatePlantNoteBodyImplCopyWith<$Res> {
  __$$UpdatePlantNoteBodyImplCopyWithImpl(
    _$UpdatePlantNoteBodyImpl _value,
    $Res Function(_$UpdatePlantNoteBodyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdatePlantNoteBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? content = null}) {
    return _then(
      _$UpdatePlantNoteBodyImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePlantNoteBodyImpl implements _UpdatePlantNoteBody {
  const _$UpdatePlantNoteBodyImpl({required this.title, required this.content});

  factory _$UpdatePlantNoteBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePlantNoteBodyImplFromJson(json);

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'UpdatePlantNoteBody(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePlantNoteBodyImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  /// Create a copy of UpdatePlantNoteBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePlantNoteBodyImplCopyWith<_$UpdatePlantNoteBodyImpl> get copyWith =>
      __$$UpdatePlantNoteBodyImplCopyWithImpl<_$UpdatePlantNoteBodyImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePlantNoteBodyImplToJson(this);
  }
}

abstract class _UpdatePlantNoteBody implements UpdatePlantNoteBody {
  const factory _UpdatePlantNoteBody({
    required final String title,
    required final String content,
  }) = _$UpdatePlantNoteBodyImpl;

  factory _UpdatePlantNoteBody.fromJson(Map<String, dynamic> json) =
      _$UpdatePlantNoteBodyImpl.fromJson;

  @override
  String get title;
  @override
  String get content;

  /// Create a copy of UpdatePlantNoteBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePlantNoteBodyImplCopyWith<_$UpdatePlantNoteBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
