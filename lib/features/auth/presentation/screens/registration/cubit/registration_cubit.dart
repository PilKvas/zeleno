import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/data/network/exeptions/exeptions.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_model.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';

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

  Future<void> registerUser(
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
      
      await _authRepository.signUp(
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
      String errorMessage = 'Ошибка регистрации';
      
      if (e.errorResponse?.detail.contains('username') == true) {
        errorMessage = 'Пользователь с таким именем уже существует';
      } else if (e.errorResponse?.detail.contains('email') == true) {
        errorMessage = 'Пользователь с таким email уже существует';
      } else {
        errorMessage = e.errorResponse?.detail ?? errorMessage;
      }
      
      emit(
        state.copyWith(
          errorResponse: errorMessage,
          status: Status.failure,
        ),
      );
    } on BadRequest catch (_) {
      emit(
        state.copyWith(
          errorResponse: 'Некорректные данные для регистрации',
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
          errorResponse: 'Произошла ошибка при регистрации',
          status: Status.failure,
        ),
      );
    }
  }
}
