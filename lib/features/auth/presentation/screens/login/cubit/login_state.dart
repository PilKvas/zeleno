part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required Status status,
    String? errorResponse,
  }) = _LoginState;
}
