import 'dart:async';

import 'package:zeleno_v2/features/auth/data/persistence/storage/tokens_storage/i_tokens_storage.dart';
import 'package:zeleno_v2/features/auth/data/service/auth_service.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_status.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  final _controller = StreamController<AuthStatus>.broadcast();

  final AuthService _authService;
  final ITokensStorage _tokensStorage;

  AuthRepository({
    required ITokensStorage tokenStorage,
    required AuthService authService,
  })  : _authService = authService,
        _tokensStorage = tokenStorage;

  @override
  Stream<AuthStatus> get statusStream async* {
    final valid = await hasValidTokens();
    yield valid ? AuthStatus.authenticated : AuthStatus.unauthenticated;
    yield* _controller.stream;
  }

  @override
  Future<TokenModel> signIn({required AuthModel authModel}) async {
    final response = await _authService.signIn(authModel: authModel);
    _tokensStorage.saveTokens(response);
    _controller.add(AuthStatus.authenticated);
    return response;
  }

  @override
  Future<void> signUp({required AuthModel authModel}) async {
    await _authService.signUp(authModel: authModel);
  }

  @override
  Future<void> signOut() async {
    await _tokensStorage.clear();
    _controller.add(AuthStatus.unauthenticated);
  }

  @override
  Future<bool> hasValidTokens() async {
    final access = await _tokensStorage.accessToken;
    final refresh = await _tokensStorage.refreshToken;
    return access != null && refresh != null;
  }
}
