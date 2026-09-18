part of 'login_cubit.dart';

@freezed
sealed class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success() = LoginSuccess;
  const factory LoginState.failure(Object error) = LoginFailure;

  bool get isLoading => this is LoginLoading;
}
