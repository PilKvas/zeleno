import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/password_reset_confirm_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/password_reset_request_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/password_reset_token_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/password_reset_verify_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @POST('/api/users/register')
  Future<void> signUp({
    @Body() required AuthModel authModel,
  });

  @POST('/api/users/login')
  Future<TokenModel> signIn({
    @Body(nullToAbsent: true) required AuthModel authModel,
  });

  @POST('/api/users/password-reset')
  Future<void> requestPasswordReset({
    @Body() required PasswordResetRequestModel payload,
  });

  @POST('/api/users/password-reset/verify')
  Future<PasswordResetTokenModel> verifyPasswordResetOtp({
    @Body() required PasswordResetVerifyModel payload,
  });

  @POST('/api/users/password-reset/confirm')
  Future<void> confirmPasswordReset({
    @Body() required PasswordResetConfirmModel payload,
  });
}
