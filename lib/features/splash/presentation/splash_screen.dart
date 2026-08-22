import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/first_run/export.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/splash/presentation/bloc/export.dart';

@RoutePage()
class SplashScreen extends StatelessWidget implements AutoRouteWrapper {
  const SplashScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SplashBloc(firstRunStorage: injection<IFirstRunStorage>())
            ..add(const SplashEvent.startApp()),
      child: this,
    );
  }

  void authenticationListener(BuildContext context, SplashState state) {
    state.map(
      initial: (_) {},
      firstTimeInApp: (_) {
        FlutterNativeSplash.remove();
        context.router.replace(const OnBoardingRoute());
      },
      readyToHome: (_) {
        FlutterNativeSplash.remove();
        final bool isAuthenticated =
            context.read<AuthCubit>().state.authStatus ==
            AuthStatus.authenticated;
        // Гость стартует с «Поиска», авторизованный — с «Моего сада».
        context.router.replace(
          isAuthenticated
              ? const HomeRoute()
              : const HomeRoute(
                  children: <PageRouteInfo>[PlantSearchStackRoute()],
                ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        listener: authenticationListener,
        child: const SizedBox(),
      ),
    );
  }
}
