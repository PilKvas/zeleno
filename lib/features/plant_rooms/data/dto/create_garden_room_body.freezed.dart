// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_garden_room_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateGardenRoomBody _$CreateGardenRoomBodyFromJson(Map<String, dynamic> json) {
  return _CreateGardenRoomBody.fromJson(json);
}

/// @nodoc
mixin _$CreateGardenRoomBody {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CreateGardenRoomBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateGardenRoomBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGardenRoomBodyCopyWith<CreateGardenRoomBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGardenRoomBodyCopyWith<$Res> {
  factory $CreateGardenRoomBodyCopyWith(
    CreateGardenRoomBody value,
    $Res Function(CreateGardenRoomBody) then,
  ) = _$CreateGardenRoomBodyCopyWithImpl<$Res, CreateGardenRoomBody>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreateGardenRoomBodyCopyWithImpl<
  $Res,
  $Val extends CreateGardenRoomBody
>
    implements $CreateGardenRoomBodyCopyWith<$Res> {
  _$CreateGardenRoomBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGardenRoomBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateGardenRoomBodyImplCopyWith<$Res>
    implements $CreateGardenRoomBodyCopyWith<$Res> {
  factory _$$CreateGardenRoomBodyImplCopyWith(
    _$CreateGardenRoomBodyImpl value,
    $Res Function(_$CreateGardenRoomBodyImpl) then,
  ) = __$$CreateGardenRoomBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateGardenRoomBodyImplCopyWithImpl<$Res>
    extends _$CreateGardenRoomBodyCopyWithImpl<$Res, _$CreateGardenRoomBodyImpl>
    implements _$$CreateGardenRoomBodyImplCopyWith<$Res> {
  __$$CreateGardenRoomBodyImplCopyWithImpl(
    _$CreateGardenRoomBodyImpl _value,
    $Res Function(_$CreateGardenRoomBodyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateGardenRoomBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$CreateGardenRoomBodyImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGardenRoomBodyImpl implements _CreateGardenRoomBody {
  const _$CreateGardenRoomBodyImpl({required this.name});

  factory _$CreateGardenRoomBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateGardenRoomBodyImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateGardenRoomBody(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGardenRoomBodyImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of CreateGardenRoomBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGardenRoomBodyImplCopyWith<_$CreateGardenRoomBodyImpl>
  get copyWith =>
      __$$CreateGardenRoomBodyImplCopyWithImpl<_$CreateGardenRoomBodyImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGardenRoomBodyImplToJson(this);
  }
}

abstract class _CreateGardenRoomBody implements CreateGardenRoomBody {
  const factory _CreateGardenRoomBody({required final String name}) =
      _$CreateGardenRoomBodyImpl;

  factory _CreateGardenRoomBody.fromJson(Map<String, dynamic> json) =
      _$CreateGardenRoomBodyImpl.fromJson;

  @override
  String get name;

  /// Create a copy of CreateGardenRoomBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGardenRoomBodyImplCopyWith<_$CreateGardenRoomBodyImpl>
  get copyWith => throw _privateConstructorUsedError;
}
