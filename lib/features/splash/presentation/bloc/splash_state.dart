part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.firstTimeInApp() = _FirstTimeInApp;
  const factory SplashState.readyToHome() = _ReadyToHome;
}
