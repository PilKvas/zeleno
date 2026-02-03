import 'package:zeleno_v2/features/auth/data/persistence/storage/tokens_storage/i_tokens_storage.dart';
import 'package:zeleno_v2/features/auth/data/service/auth_service.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  final AuthService _authService;
  final ITokensStorage _tokensStorage;

  AuthRepository({
    required ITokensStorage tokenStorage,
    required AuthService authService,
  })  : _authService = authService,
        _tokensStorage = tokenStorage;

  @override
  Future<TokenModel> signIn({required AuthModel authModel}) async {
    final response = await _authService.signIn(authModel: authModel);

    _tokensStorage.saveTokens(response);
    return response;
  }

  @override
  Future<void> signUp({required AuthModel authModel}) async {
    await _authService.signUp(authModel: authModel);
  }

  @override
  Future<bool> hasValidTokens() async {
    final access = await _tokensStorage.accessToken;
    final refresh = await _tokensStorage.refreshToken;
    
    return access != null && refresh != null;
  }
}
