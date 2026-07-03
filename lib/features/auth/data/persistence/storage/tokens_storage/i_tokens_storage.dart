import 'package:zeleno_v2/features/auth/domain/model/export.dart';

/// Storage for tokens
abstract interface class ITokensStorage {
  /// Get accessToken
  Future<String?> get accessToken;

  /// Get refreshToken
  Future<String?> get refreshToken;

  /// Save tokens
  Future<void> saveTokens(TokenModel tokens);

  /// Clear storage
  Future<void> clear();
}
