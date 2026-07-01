import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_confirm_model.freezed.dart';
part 'password_reset_confirm_model.g.dart';

@freezed
class PasswordResetConfirmModel with _$PasswordResetConfirmModel {
  const factory PasswordResetConfirmModel({
    required String token,
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _PasswordResetConfirmModel;

  factory PasswordResetConfirmModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetConfirmModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
