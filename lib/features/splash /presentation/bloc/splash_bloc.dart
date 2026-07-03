import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/first_run/export.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final IFirstRunStorage _firstRunStorage;

  SplashBloc({required firstRunStorage})
      : _firstRunStorage = firstRunStorage,
        super(const SplashState.initial()) {
    on<SplashEvent>(_onStartApp);
  }

  Future<void> _onStartApp(
    SplashEvent event,
    Emitter<SplashState> emit,
  ) async {
    final isFirstTimeInApp = _firstRunStorage.getIsFirstRun();
    if (isFirstTimeInApp) {
      await _firstRunStorage.setIsFirstRun(value: false);
      emit(const SplashState.firstTimeInApp());
    } else {
      emit(const SplashState.readyToHome());
    }
  }
}
