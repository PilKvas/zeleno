import 'package:zeleno_v2/features/auth/data/persistence/storage/tokens_storage/tokens_storage.dart';
import 'package:zeleno_v2/features/auth/data/service/auth_service.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  final AuthService _authService;
  final TokensStorage _tokensStorage;

  AuthRepository({
    required TokensStorage tokenStorage,
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
    _authService.signUp(authModel: authModel);
  }
}
