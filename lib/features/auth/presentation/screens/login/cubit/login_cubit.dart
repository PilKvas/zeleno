import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final IAuthRepository _authRepository;

  LoginCubit({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const LoginState(
          status: Status.initial,
        ));

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      emit(
        state.copyWith(
          status: Status.loading,
        ),
      );

      await _authRepository.signIn(
        authModel: AuthModel(
          email: email,
          password: password,
        ),
      );

      emit(
        state.copyWith(
          status: Status.success,
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
