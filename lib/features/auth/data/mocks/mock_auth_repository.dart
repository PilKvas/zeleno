import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_status.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';

class MockAuthRepository implements IAuthRepository {
  final TokenModel _mockToken = const TokenModel(
    refresh: 'mock_refresh_token',
    access: 'mock_access_token',
  );

  bool _hasValidTokens = false;

  @override
  Stream<AuthStatus> get statusStream => Stream.value(
        _hasValidTokens ? AuthStatus.authenticated : AuthStatus.unauthenticated,
      );

  @override
  Future<void> signUp({required AuthModel authModel}) async {
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<TokenModel> signIn({required AuthModel authModel}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _hasValidTokens = true;
    return _mockToken;
  }

  @override
  Future<void> requestPasswordReset({required String email}) async {
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<String> verifyPasswordResetOtp({
    required String email,
    required String otp,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return 'mock-reset-token';
  }

  @override
  Future<void> confirmPasswordReset({
    required String token,
    required String newPassword,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<void> signOut() async {}

  @override
  Future<bool> hasValidTokens() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _hasValidTokens;
  }
}
