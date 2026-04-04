import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/first_run/i_first_run_storage.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';

import 'bloc/splash_bloc.dart';

@RoutePage()
class SplashScreen extends StatelessWidget implements AutoRouteWrapper {
  const SplashScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(
        firstRunStorage: injection<IFirstRunStorage>(),
      )..add(
          const SplashEvent.startApp(),
        ),
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
        context.router.replace(const HomeRoute());
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
