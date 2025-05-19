import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';

abstract class IAuthRepository {
  Future<void> signUp({
    required AuthModel authModel,
  });

  Future<TokenModel> signIn({
    required AuthModel authModel,
  });

  Future<bool> hasValidTokens();
}
