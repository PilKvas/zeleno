import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:zeleno_v2/data/persistence/storage/tokens_storage/data/auth_tokens_storage_dto.dart';
import 'package:zeleno_v2/data/persistence/storage/tokens_storage/i_tokens_storage.dart';

/// {@template tokens_storage.class}
/// Implementation [ITokensStorage]
/// {@endtemplate}
final class TokensStorage implements ITokensStorage {
  final FlutterSecureStorage _secureStorage;

  /// {@macro tokens_storage.class}
  const TokensStorage(this._secureStorage);

  @override
  Future<String?> get accessToken =>
      _secureStorage.read(key: TokensStorageKeys.accessToken.keyName);

  @override
  Future<String?> get refreshToken =>
      _secureStorage.read(key: TokensStorageKeys.refreshToken.keyName);

  @override
  Future<void> saveTokens(AuthTokensStorageDto tokens) async {
    await _secureStorage.write(
        key: TokensStorageKeys.accessToken.keyName, value: tokens.accessToken);
    await _secureStorage.write(
        key: TokensStorageKeys.refreshToken.keyName,
        value: tokens.refreshToken);
  }

  @override
  Future<void> clear() async {
    for (final key in TokensStorageKeys.values) {
      await _secureStorage.delete(key: key.keyName);
    }
  }
}

/// Keys for [TokensStorage]
enum TokensStorageKeys {
  /// @nodoc
  accessToken('app_access_token'),

  /// @nodoc
  refreshToken('app_refresh_token');

  /// Key name
  final String keyName;

  const TokensStorageKeys(this.keyName);
}
