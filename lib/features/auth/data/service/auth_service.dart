import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @POST('/api/auth/signup')
  Future<void> signUp({
    @Body(nullToAbsent: true) required AuthModel authModel,
  });

  @POST('/api/auth/signin')
  Future<TokenModel> signIn({
    @Body(nullToAbsent: true) required AuthModel authModel,
  });
}
