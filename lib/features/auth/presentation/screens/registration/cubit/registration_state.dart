part of 'registration_cubit.dart';

@freezed
sealed class RegistrationState with _$RegistrationState {
  const RegistrationState._();

  const factory RegistrationState.initial() = RegistrationInitial;
  const factory RegistrationState.loading() = RegistrationLoading;
  const factory RegistrationState.success() = RegistrationSuccess;
  const factory RegistrationState.failure(Object error) = RegistrationFailure;

  bool get isLoading => this is RegistrationLoading;
}
