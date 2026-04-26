part of 'password_reset_request_cubit.dart';

@freezed
class PasswordResetRequestState with _$PasswordResetRequestState {
  const factory PasswordResetRequestState({
    required Status status,
    Object? error,
  }) = _PasswordResetRequestState;
}
