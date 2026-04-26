part of 'password_reset_confirm_cubit.dart';

@freezed
class PasswordResetConfirmState with _$PasswordResetConfirmState {
  const factory PasswordResetConfirmState({
    required Status status,
    Object? error,
  }) = _PasswordResetConfirmState;
}
