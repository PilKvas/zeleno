import 'package:zeleno_v2/features/auth/data/service/export.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';

class RefreshRepository implements IRefreshRepository {
  final RefreshService _refreshService;

  RefreshRepository({required RefreshService refreshService})
    : _refreshService = refreshService;

  @override
  Future<TokenModel> refreshTokens({required TokenModel tokenModel}) async {
    return _refreshService.refreshToken(tokenModel: tokenModel);
  }
}
