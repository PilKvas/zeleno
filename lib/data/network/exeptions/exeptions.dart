import 'package:dio/dio.dart';
import 'package:zeleno_v2/data/network/error_response.dart';

class BaseException extends DioException implements Exception {
  BaseException(
    RequestOptions requestOptions,
  ) : super(requestOptions: requestOptions);
}

class BadRequest extends BaseException {
  BadRequest({
    required RequestOptions requestOptions,
  }) : super(requestOptions);
}

class Forbidden extends BaseException {
  Forbidden({
    required RequestOptions requestOptions,
  }) : super(requestOptions);
}

class NotFound extends BaseException {
  NotFound({
    required RequestOptions requestOptions,
  }) : super(requestOptions);
}

class Conflict extends DioException {
  final ErrorResponse? errorResponse;

  Conflict({
    required super.requestOptions,
    this.errorResponse,
  }) : super(
          error: errorResponse?.detail,
          response: Response(
            requestOptions: requestOptions,
            data: errorResponse?.toJson(),
          ),
        );
}

class Unauthorized extends BaseException {
  Unauthorized({
    required RequestOptions requestOptions,
  }) : super(requestOptions);
}

class ServerUnavailable extends BaseException {
  ServerUnavailable({
    required RequestOptions requestOptions,
  }) : super(requestOptions);
}

class ServiceTemporarilyUnavailable extends BaseException {
  ServiceTemporarilyUnavailable({
    required RequestOptions requestOptions,
  }) : super(requestOptions);
}

class NoInternetConnection extends BaseException {
  NoInternetConnection({
    required RequestOptions requestOptions,
  }) : super(requestOptions);
}

class Duplicate extends BaseException {
  Duplicate({
    required RequestOptions requestOptions,
  }) : super(requestOptions);
}

class TimeoutError extends BaseException {
  TimeoutError({
    required RequestOptions requestOptions,
  }) : super(requestOptions);
}

class UnknownError extends BaseException {
  UnknownError({
    required RequestOptions requestOptions,
  }) : super(requestOptions);
}
