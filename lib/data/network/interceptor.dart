import 'package:dio/dio.dart';
import 'package:zeleno_v2/data/network/connectivity_checker.dart';
import 'package:zeleno_v2/data/network/error_response_parser.dart';
import 'package:zeleno_v2/data/network/exeptions/exeptions.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/tokens_storage/i_tokens_storage.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_refresh_repository.dart';

class MiddlewareInterceptor extends Interceptor {
  MiddlewareInterceptor({
    required this.dio,
    required this.tokensStorage,
    required this.refreshRepository,
    required this.authRepository,
    required this.connectivityChecker,
  });

  final Dio dio;
  final ITokensStorage tokensStorage;
  final IRefreshRepository refreshRepository;
  final IAuthRepository authRepository;
  final IConnectivityChecker connectivityChecker;

  Future<TokenModel?>? _refreshFuture;

  Future<void> _clearAndReject(
    RequestOptions options,
    ErrorInterceptorHandler handler,
  ) async {
    await authRepository.signOut();
    handler.reject(Unauthorized(requestOptions: options));
  }

  Future<void> _refreshToken(
    RequestOptions options,
    ErrorInterceptorHandler handler,
  ) async {
    final refreshTokenValue = await tokensStorage.refreshToken;
    if (refreshTokenValue == null) {
      await _clearAndReject(options, handler);
      return;
    }
    _refreshFuture ??= _doRefresh(refreshTokenValue);
    TokenModel? newTokens;
    try {
      newTokens = await _refreshFuture;
    } finally {
      _refreshFuture = null;
    }
    if (newTokens == null || newTokens.access == null) {
      await _clearAndReject(options, handler);
      return;
    }
    options.headers['Authorization'] = 'Bearer ${newTokens.access}';
    try {
      final response = await dio.fetch(options);
      handler.resolve(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        await _clearAndReject(options, handler);
      } else {
        handler.reject(e);
      }
    }
  }

  Future<TokenModel?> _doRefresh(String refreshTokenValue) async {
    try {
      final tokens = await refreshRepository.refreshTokens(
        tokenModel: TokenModel(refresh: refreshTokenValue),
      );
      await tokensStorage.saveTokens(tokens);
      return tokens;
    } catch (e, st) {
      assert(() {
        // ignore: avoid_print
        print('[MiddlewareInterceptor] token refresh failed: $e\n$st');
        return true;
      }());
      return null;
    }
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    switch (err.response?.statusCode) {
      case 400:
        handler.reject(
          BadRequest(
            requestOptions: err.requestOptions,
            errorResponse: parseApiErrorBody(err.response?.data),
          ),
        );
        return;
      case 401:
        await _refreshToken(err.requestOptions, handler);
        return;
      case 403:
        handler.reject(
          Forbidden(
            requestOptions: err.requestOptions,
            errorResponse: parseApiErrorBody(err.response?.data),
          ),
        );
        return;
      case 404:
        handler.reject(
          NotFound(
            requestOptions: err.requestOptions,
            errorResponse: parseApiErrorBody(err.response?.data),
          ),
        );
        return;
      case 409:
        handler.reject(
          Conflict(
            requestOptions: err.requestOptions,
            errorResponse: parseApiErrorBody(err.response?.data),
          ),
        );
        return;
      case 422:
        handler.reject(
          UnprocessableError(
            requestOptions: err.requestOptions,
            errorResponse: parseApiErrorBody(err.response?.data),
          ),
        );
        return;
      case 500:
      case 502:
        handler.reject(ServerUnavailable(requestOptions: err.requestOptions));
        return;
      case 503:
        handler.reject(
          ServiceTemporarilyUnavailable(requestOptions: err.requestOptions),
        );
        return;
      default:
        handler.reject(UnknownError(requestOptions: err.requestOptions));
        return;
    }
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!(await connectivityChecker.hasConnection())) {
      return handler.reject(
        NoInternetConnection(requestOptions: options),
      );
    }
    final accessToken = await tokensStorage.accessToken;
    if (accessToken != null) {
      options.headers.putIfAbsent('Authorization', () => 'Bearer $accessToken');
    }
    return handler.next(options);
  }
}
