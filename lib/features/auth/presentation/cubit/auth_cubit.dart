import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';
import 'package:zeleno_v2/features/push_notifications/application/export.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required IAuthRepository authRepository,
    required PushTokenManager pushTokenManager,
  })  : _authRepository = authRepository,
        _pushTokenManager = pushTokenManager,
        super(const AuthState()) {
    _subscription = _authRepository.statusStream.listen(_onStatus);
  }

  final IAuthRepository _authRepository;
  final PushTokenManager _pushTokenManager;
  late final StreamSubscription<AuthStatus> _subscription;

  void _onStatus(AuthStatus status) {
    emit(state.copyWith(authStatus: status));
  }

  Future<void> signOut() async {
    // Разрываем привязку fcm-токена ДО очистки auth-токенов:
    // DELETE — авторизованный запрос, после очистки получит 401,
    // и разлогиненное устройство продолжит получать пуши.
    await _pushTokenManager.unregisterToken();
    await _authRepository.signOut();
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
