import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_verify_model.freezed.dart';
part 'password_reset_verify_model.g.dart';

@freezed
class PasswordResetVerifyModel with _$PasswordResetVerifyModel {
  const factory PasswordResetVerifyModel({
    required String email,
    required String otp,
  }) = _PasswordResetVerifyModel;

  factory PasswordResetVerifyModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetVerifyModelFromJson(json);
}
