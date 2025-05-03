import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';

abstract class IRefreshRepository {
  Future<TokenModel> refreshTokens({
    required TokenModel tokenModel,
  });
}
