import 'package:equatable/equatable.dart';
import 'package:zeleno_v2/features/profile/data/dto/export.dart';

class User extends Equatable {
  final String email;
  final String username;
  final String? firstName;
  final String? lastName;
  final Gender? gender;
  final String? bio;
  final DateTime? birthday;
  final String? location;
  final Hemisphere? hemisphere;

  const User({
    required this.email,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.bio,
    required this.birthday,
    required this.location,
    required this.hemisphere,
  });

  @override
  List<Object?> get props => [
    email,
    username,
    firstName,
    lastName,
    gender,
    bio,
    birthday,
    location,
    hemisphere,
  ];
}
