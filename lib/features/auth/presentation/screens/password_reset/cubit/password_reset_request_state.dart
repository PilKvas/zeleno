part of 'password_reset_request_cubit.dart';

@freezed
sealed class PasswordResetRequestState with _$PasswordResetRequestState {
  const PasswordResetRequestState._();

  const factory PasswordResetRequestState.initial() =
      PasswordResetRequestInitial;
  const factory PasswordResetRequestState.loading() =
      PasswordResetRequestLoading;
  const factory PasswordResetRequestState.success() =
      PasswordResetRequestSuccess;
  const factory PasswordResetRequestState.failure(Object error) =
      PasswordResetRequestFailure;

  bool get isLoading => this is PasswordResetRequestLoading;
}
