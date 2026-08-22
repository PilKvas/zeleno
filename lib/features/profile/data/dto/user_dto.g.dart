// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      email: json['email'] as String,
      username: json['username'] as String,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      bio: json['bio'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      location: json['location'] as String?,
      hemisphere: $enumDecodeNullable(_$HemisphereEnumMap, json['hemisphere']),
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'gender': _$GenderEnumMap[instance.gender],
      'bio': instance.bio,
      'birthday': instance.birthday?.toIso8601String(),
      'location': instance.location,
      'hemisphere': _$HemisphereEnumMap[instance.hemisphere],
    };

const _$GenderEnumMap = {Gender.male: 'male', Gender.female: 'female'};

const _$HemisphereEnumMap = {
  Hemisphere.north: 'north',
  Hemisphere.east: 'east',
  Hemisphere.south: 'south',
  Hemisphere.west: 'west',
};
