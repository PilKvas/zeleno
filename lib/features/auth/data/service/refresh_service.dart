import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';

part 'refresh_service.g.dart';

@RestApi()
abstract class RefreshService {
  factory RefreshService(Dio dio) = _RefreshService;

  @POST('/api/users/refresh')
  Future<TokenModel> refreshToken({
    @Body(nullToAbsent: true) required TokenModel tokenModel,
  });
}
