import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/data/network/exeptions/exeptions.dart';
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

  Future<void> loginUser(
    String? email,
    String username,
    String password,
  ) async {
    try {
      emit(
        state.copyWith(
          status: Status.loading,
          errorResponse: null,
        ),
      );
      
      await _authRepository.signIn(
        authModel: AuthModel(
          email: email,
          username: username,
          password: password,
        ),
      );
      
      emit(
        state.copyWith(
          status: Status.success,
          errorResponse: null,
        ),
      );
    } on Conflict catch (e) {
      emit(
        state.copyWith(
          errorResponse: e.errorResponse?.detail ?? 'Ошибка входа',
          status: Status.failure,
        ),
      );
    } on Unauthorized catch (_) {
      emit(
        state.copyWith(
          errorResponse: 'Неверное имя пользователя или пароль',
          status: Status.failure,
        ),
      );
    } on BadRequest catch (_) {
      emit(
        state.copyWith(
          errorResponse: 'Некорректные данные для входа',
          status: Status.failure,
        ),
      );
    } on NoInternetConnection catch (_) {
      emit(
        state.copyWith(
          errorResponse: 'Отсутствует подключение к интернету',
          status: Status.failure,
        ),
      );
    } on ServerUnavailable catch (_) {
      emit(
        state.copyWith(
          errorResponse: 'Сервер временно недоступен, попробуйте позже',
          status: Status.failure,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          errorResponse: 'Произошла ошибка при входе в приложение',
          status: Status.failure,
        ),
      );
    }
  }
}
