import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';

part 'password_reset_verify_cubit.freezed.dart';
part 'password_reset_verify_state.dart';

class PasswordResetVerifyCubit extends Cubit<PasswordResetVerifyState> {
  PasswordResetVerifyCubit({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const PasswordResetVerifyState(status: Status.initial));

  final IAuthRepository _authRepository;

  Future<void> verifyOtp({
    required String email,
    required String otp,
  }) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final String token = await _authRepository.verifyPasswordResetOtp(
        email: email,
        otp: otp,
      );
      emit(state.copyWith(status: Status.success, token: token));
    } catch (error) {
      emit(state.copyWith(status: Status.failure, error: error));
    }
  }
}
