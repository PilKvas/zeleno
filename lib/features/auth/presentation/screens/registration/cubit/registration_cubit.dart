import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';

part 'registration_cubit.freezed.dart';
part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  final IAuthRepository _authRepository;

  RegistrationCubit({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(
          const RegistrationState(
            status: Status.initial,
          ),
        );

  Future<void> registerUser({
    required String email,
    required String password,
  }) async {
    try {
      emit(
        state.copyWith(
          status: Status.loading,
          error: null,
        ),
      );

      await _authRepository.signUp(
        authModel: AuthModel(
          email: email,
          password: password,
        ),
      );

      emit(
        state.copyWith(
          status: Status.success,
          error: null,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: e,
          status: Status.failure,
        ),
      );
    }
  }
}
