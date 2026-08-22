import 'package:zeleno_v2/features/auth/domain/model/export.dart';

abstract class IAuthRepository {
  Stream<AuthStatus> get statusStream;

  Future<void> signUp({required AuthModel authModel});

  Future<TokenModel> signIn({required AuthModel authModel});

  Future<void> requestPasswordReset({required String email});

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
