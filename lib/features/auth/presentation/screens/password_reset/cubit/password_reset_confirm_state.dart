part of 'password_reset_confirm_cubit.dart';

@freezed
sealed class PasswordResetConfirmState with _$PasswordResetConfirmState {
  const PasswordResetConfirmState._();

  const factory PasswordResetConfirmState.initial() =
      PasswordResetConfirmInitial;
  const factory PasswordResetConfirmState.loading() =
      PasswordResetConfirmLoading;
  const factory PasswordResetConfirmState.success() =
      PasswordResetConfirmSuccess;
  const factory PasswordResetConfirmState.failure(Object error) =
      PasswordResetConfirmFailure;

  bool get isLoading => this is PasswordResetConfirmLoading;
}
