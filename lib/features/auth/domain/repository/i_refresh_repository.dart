import 'package:zeleno_v2/features/auth/domain/model/export.dart';

abstract class IRefreshRepository {
  Future<TokenModel> refreshTokens({required TokenModel tokenModel});
}
