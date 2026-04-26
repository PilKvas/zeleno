part of 'password_reset_verify_cubit.dart';

@freezed
class PasswordResetVerifyState with _$PasswordResetVerifyState {
  const factory PasswordResetVerifyState({
    required Status status,
    String? token,
    Object? error,
  }) = _PasswordResetVerifyState;
}
