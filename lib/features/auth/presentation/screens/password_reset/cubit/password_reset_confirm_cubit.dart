import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';

part 'password_reset_confirm_cubit.freezed.dart';

part 'password_reset_confirm_state.dart';

class PasswordResetConfirmCubit extends Cubit<PasswordResetConfirmState> {
  PasswordResetConfirmCubit({required IAuthRepository authRepository})
    : _authRepository = authRepository,
      super(const PasswordResetConfirmState.initial());

  final IAuthRepository _authRepository;

  Future<void> confirmPasswordReset({
    required String token,
    required String newPassword,
  }) async {
    emit(const PasswordResetConfirmState.loading());
    try {
      await _authRepository.confirmPasswordReset(
        token: token,
        newPassword: newPassword,
      );
      emit(const PasswordResetConfirmState.success());
    } catch (error) {
      emit(PasswordResetConfirmState.failure(error));
    }
  }
}
