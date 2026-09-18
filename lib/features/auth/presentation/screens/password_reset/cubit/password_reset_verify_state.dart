part of 'password_reset_verify_cubit.dart';

@freezed
sealed class PasswordResetVerifyState with _$PasswordResetVerifyState {
  const PasswordResetVerifyState._();

  const factory PasswordResetVerifyState.initial() = PasswordResetVerifyInitial;
  const factory PasswordResetVerifyState.loading() = PasswordResetVerifyLoading;
  const factory PasswordResetVerifyState.success(String token) =
      PasswordResetVerifySuccess;
  const factory PasswordResetVerifyState.failure(Object error) =
      PasswordResetVerifyFailure;

  bool get isLoading => this is PasswordResetVerifyLoading;
}
