import 'dart:io';

import 'package:dio/dio.dart';
import 'package:zeleno_v2/data/network/error_response.dart';
import 'package:zeleno_v2/data/network/exeptions/exeptions.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/tokens_storage/i_tokens_storage.dart';
import 'package:zeleno_v2/features/auth/domain/model/token_model.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_refresh_repository.dart';

class MiddlewareInterceptor extends Interceptor {
  final ITokensStorage tokensStorage;
  final IRefreshRepository refreshRepository;

  MiddlewareInterceptor({
    required this.tokensStorage,
    required this.refreshRepository,
  });

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    switch (err.response?.statusCode) {
      case 400:
        // final response = ErrorResponse.fromJson(err.response);
        handler.reject(
          BadRequest(requestOptions: err.requestOptions),
        );
      case 401:
        await refreshToken(err.requestOptions, handler);
      case 403:
        handler.reject(Forbidden(requestOptions: err.requestOptions));
      case 404:
        handler.reject(NotFound(requestOptions: err.requestOptions));
      case 409:
        if (err.response?.data is Map<String, dynamic>) {
          final response = ErrorResponse.fromJson(
              err.response!.data as Map<String, dynamic>);
          handler.reject(
            Conflict(
              requestOptions: err.requestOptions,
              errorResponse: response,
            ),
          );
        }
      case 500 || 502:
        handler.reject(ServerUnavailable(requestOptions: err.requestOptions));
      case 503:
        handler.reject(
            ServiceTemporarilyUnavailable(requestOptions: err.requestOptions));
      default:
        handler.reject(UnknownError(requestOptions: err.requestOptions));
    }
  }

  Future<void> refreshToken(
      RequestOptions options, ErrorInterceptorHandler handler) async {
    await tokensStorage.clear();
    final refreshToken = await tokensStorage.refreshToken;

    if (refreshToken != null) {
      final response = await refreshRepository.refreshTokens(
        tokenModel: TokenModel(refresh: refreshToken),
      );
      await tokensStorage.saveTokens(response);

      options.headers['Authorization'] = 'Bearer ${response.access}';

      final request = await Dio().fetch(options);

      return handler.resolve(request);
    }

    return handler.reject(
      Unauthorized(requestOptions: options),
    );
  }

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (!(await ConnectivityHelper.hasConnection())) {
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

class ConnectivityHelper {
  static Future<bool> hasConnection() async {
    var hasConnection = false;

    try {
      final result = await InternetAddress.lookup('google.com');

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }
    return hasConnection;
  }
}
