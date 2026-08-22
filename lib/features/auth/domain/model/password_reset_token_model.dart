import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_token_model.freezed.dart';
part 'password_reset_token_model.g.dart';

@freezed
class PasswordResetTokenModel with _$PasswordResetTokenModel {
  const factory PasswordResetTokenModel({required String token}) =
      _PasswordResetTokenModel;

  factory PasswordResetTokenModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetTokenModelFromJson(json);
}
