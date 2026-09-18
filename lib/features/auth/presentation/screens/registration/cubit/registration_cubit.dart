import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';

part 'registration_cubit.freezed.dart';

part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  final IAuthRepository _authRepository;

  RegistrationCubit({required IAuthRepository authRepository})
    : _authRepository = authRepository,
      super(const RegistrationState.initial());

  Future<void> registerUser({
    required String email,
    required String password,
  }) async {
    try {
      emit(const RegistrationState.loading());

      await _authRepository.signUp(
        authModel: AuthModel(email: email, password: password),
      );

      emit(const RegistrationState.success());
    } catch (error) {
      emit(RegistrationState.failure(error));
    }
  }
}
