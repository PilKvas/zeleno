import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';

part 'password_reset_request_cubit.freezed.dart';

part 'password_reset_request_state.dart';

class PasswordResetRequestCubit extends Cubit<PasswordResetRequestState> {
  PasswordResetRequestCubit({required IAuthRepository authRepository})
    : _authRepository = authRepository,
      super(const PasswordResetRequestState.initial());

  final IAuthRepository _authRepository;

  Future<void> requestPasswordReset({required String email}) async {
    emit(const PasswordResetRequestState.loading());
    try {
      await _authRepository.requestPasswordReset(email: email);
      emit(const PasswordResetRequestState.success());
    } catch (error) {
      emit(PasswordResetRequestState.failure(error));
    }
  }
}
