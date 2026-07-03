import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required IAuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState()) {
    _subscription = _authRepository.statusStream.listen(_onStatus);
  }

  final IAuthRepository _authRepository;
  late final StreamSubscription<AuthStatus> _subscription;

  void _onStatus(AuthStatus status) {
    emit(state.copyWith(authStatus: status));
  }

  Future<void> signOut() => _authRepository.signOut();

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
