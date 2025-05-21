import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    @JsonKey(name: "code") required String code,
    @JsonKey(name: "detail") required String detail,
    @JsonKey(name: "errors") required List<dynamic> errors,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
