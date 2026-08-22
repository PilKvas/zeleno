import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    required String email,
    required String username,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    Gender? gender,
    String? bio,
    DateTime? birthday,
    String? location,
    Hemisphere? hemisphere,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@JsonEnum()
enum Gender { male, female }

@JsonEnum()
enum Hemisphere { north, east, south, west }
