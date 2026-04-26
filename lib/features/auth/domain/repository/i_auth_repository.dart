import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_status.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';

abstract class IAuthRepository {
  Stream<AuthStatus> get statusStream;

  Future<void> signUp({
    required AuthModel authModel,
  });

  Future<TokenModel> signIn({
    required AuthModel authModel,
  });

  Future<void> requestPasswordReset({
    required String email,
  });

  Future<String> verifyPasswordResetOtp({
    required String email,
    required String otp,
  });

  Future<void> confirmPasswordReset({
    required String token,
    required String newPassword,
  });

  Future<void> signOut();

  Future<bool> hasValidTokens();
}
