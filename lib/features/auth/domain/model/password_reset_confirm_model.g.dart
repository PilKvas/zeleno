// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset_confirm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordResetConfirmModelImpl _$$PasswordResetConfirmModelImplFromJson(
  Map<String, dynamic> json,
) => _$PasswordResetConfirmModelImpl(
  token: json['token'] as String,
  newPassword: json['new_password'] as String,
);

Map<String, dynamic> _$$PasswordResetConfirmModelImplToJson(
  _$PasswordResetConfirmModelImpl instance,
) => <String, dynamic>{
  'token': instance.token,
  'new_password': instance.newPassword,
};
