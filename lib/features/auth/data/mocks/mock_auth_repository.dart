import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';

class MockAuthRepository implements IAuthRepository {
  final TokenModel _mockToken = const TokenModel(
    refresh: 'mock_refresh_token',
    access: 'mock_access_token',
  );

  bool _hasValidTokens = false;

  @override
  Future<void> signUp({required AuthModel authModel}) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<TokenModel> signIn({required AuthModel authModel}) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
    _hasValidTokens = true;
    return _mockToken;
  }

  @override
  Future<bool> hasValidTokens() async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
    return _hasValidTokens;
  }
} 