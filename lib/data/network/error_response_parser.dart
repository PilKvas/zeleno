import 'package:zeleno_v2/data/network/error_response.dart';

/// Parses the API error JSON body used across status codes (400, 403, 404, 409, 422, …).
ErrorResponse? parseApiErrorBody(dynamic data) {
  final Map<String, dynamic>? map = _coerceToStringKeyMap(data);
  if (map == null) {
    return null;
  }
  try {
    return ErrorResponse.fromJson(map);
  } catch (_) {
    return _parseLooseErrorResponse(map);
  }
}

Map<String, dynamic>? _coerceToStringKeyMap(dynamic data) {
  if (data == null) {
    return null;
  }
  if (data is Map<String, dynamic>) {
    return data;
  }
  if (data is Map) {
    return Map<String, dynamic>.from(data);
  }
  return null;
}

ErrorResponse? _parseLooseErrorResponse(Map<String, dynamic> data) {
  final String? message = _extractUserFacingMessage(data);
  if (message == null || message.isEmpty) {
    return null;
  }
  final String? errorCode = data['error'] as String?;
  return ErrorResponse(
    error: errorCode ?? 'error',
    message: message,
  );
}

String? _extractUserFacingMessage(Map<String, dynamic> data) {
  final Object? message = data['message'];
  if (message is String && message.isNotEmpty) {
    return message;
  }
  final Object? detail = data['detail'];
  if (detail is String && detail.isNotEmpty) {
    return detail;
  }
  if (detail is List<dynamic>) {
    final StringBuffer buffer = StringBuffer();
    for (final Object? item in detail) {
      if (item is String && item.isNotEmpty) {
        buffer.writeln(item);
        continue;
      }
      if (item is Map) {
        final Object? msg = item['msg'];
        if (msg is String && msg.isNotEmpty) {
          buffer.writeln(msg);
        }
      }
    }
    final String combined = buffer.toString().trim();
    return combined.isEmpty ? null : combined;
  }
  return null;
}
