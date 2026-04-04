import 'package:zeleno_v2/features/profile/data/service/profile_service.dart';
import 'package:zeleno_v2/features/profile/domain/model/user.dart';
import 'package:zeleno_v2/features/profile/domain/repository/i_profile_repository.dart';

class ProfileRepository implements IProfileRepository {
  final ProfileService _profileService;

  ProfileRepository({required ProfileService profileService})
      : _profileService = profileService;

  @override
  Future<User> getCurrentUser() async {
    final response = await _profileService.getCurrentUser();

    return User(
      email: response.email,
      username: response.username,
      firstName: response.firstName,
      lastName: response.lastName,
      gender: response.gender,
      bio: response.bio,
      birthday: response.birthday,
      location: response.location,
      hemisphere: response.hemisphere,
    );
  }
}
