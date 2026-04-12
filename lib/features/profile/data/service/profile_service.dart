import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/profile/data/dto/user_dto.dart';

part 'profile_service.g.dart';

@RestApi()
abstract class ProfileService {
  factory ProfileService(Dio dio) = _ProfileService;

  @GET('/api/auth/me')
  Future<UserDto> getCurrentUser();
}
