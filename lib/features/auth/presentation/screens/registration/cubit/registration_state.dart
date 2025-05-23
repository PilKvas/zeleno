part of 'registration_cubit.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required Status status,
    String? errorResponse,
  }) = _RegistrationState;
}
