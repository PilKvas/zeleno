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
import 'package:zeleno_v2/features/splash/presentation/widgets/export.dart';

@RoutePage()
class SplashScreen extends StatefulWidget implements AutoRouteWrapper {
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

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Уходим с экрана, когда и интро доиграло, и блок решил, куда идти.
  bool _introComplete = false;
  SplashState? _destination;

  @override
  void initState() {
    super.initState();
    // Нативный сплеш снимаем после первого кадра сцены: фон у обоих
    // белый, поэтому переход бесшовный, а интро видно с самого начала.
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => FlutterNativeSplash.remove(),
    );
  }

  void _onIntroComplete() {
    _introComplete = true;
    _navigate();
  }

  void _onSplashState(BuildContext context, SplashState state) {
    _destination = state;
    _navigate();
  }

  void _navigate() {
    final destination = _destination;
    if (!_introComplete || destination == null || !mounted) return;
    destination.map(
      initial: (_) {},
      firstTimeInApp: (_) => context.router.replace(const OnBoardingRoute()),
      readyToHome: (_) {
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
        listener: _onSplashState,
        child: SplashScene(onIntroComplete: _onIntroComplete),
      ),
    );
  }
}
