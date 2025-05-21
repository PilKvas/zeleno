import 'package:zeleno_v2/features/auth/data/service/refresh_service.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_refresh_repository.dart';

class RefreshRepository implements IRefreshRepository {
  final RefreshService _refreshService;

  RefreshRepository({
    required RefreshService refreshService,
  }) : _refreshService = refreshService;

  @override
  Future<TokenModel> refreshTokens({
    required TokenModel tokenModel,
  }) async {
    return _refreshService.refreshToken(
      tokenModel: tokenModel,
    );
  }
}
