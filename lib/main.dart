import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/app/theme/export.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/theme_storage/export.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';
import 'package:zeleno_v2/features/auth/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/push_notifications/application/export.dart';
import 'package:zeleno_v2/firebase_options.dart';
import 'package:zeleno_v2/l10n/gen/app_localizations.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await _initializeFirebase();
  await initializeDependencies();
  await injection<PushTokenManager>().init();

  runApp(const MyApp());
}

/// Пуши — вспомогательная функция: если Firebase не сконфигурирован
/// (firebase_options.dart — заглушка до `flutterfire configure`),
/// приложение продолжает работать без них.
Future<void> _initializeFirebase() async {
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (error) {
    if (kDebugMode) {
      debugPrint('[main] Firebase не инициализирован, пуши выключены: $error');
    }
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  late final PushMessageHandler _pushMessageHandler;

  // AutoRouteObserver обязателен для did*TabRoute/didPopNext
  // в AutoRouteAwareStateMixin.
  late final RouterConfig<UrlState> _routerConfig = _appRouter.config(
    navigatorObservers: () => <NavigatorObserver>[AutoRouteObserver()],
  );

  @override
  void initState() {
    super.initState();
    _pushMessageHandler = PushMessageHandler(router: _appRouter);
    _pushMessageHandler.init();
  }

  @override
  void dispose() {
    _pushMessageHandler.dispose();
    super.dispose();
  }

  final ZTheme zelenoThemeLight = ZTheme(
    colorScheme: const ZColorScheme.light(),
    typography: ZTypography.based(),
    dimensions: const ZDimensions(),
  );

  @override
  Widget build(BuildContext context) {
    final ThemeData lightThemeData = zelenoThemeLight.createThemeData();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(injection<IThemeModeStorage>()),
        ),
        BlocProvider<AuthCubit>(
          lazy: false,
          create: (_) => AuthCubit(
            authRepository: injection<IAuthRepository>(),
            pushTokenManager: injection<PushTokenManager>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ru'),
          Locale('en'),
        ],
        theme: lightThemeData,
        darkTheme: lightThemeData,
        themeMode: ThemeMode.light,
        title: 'Zeleno',
        routerConfig: _routerConfig,
        builder: (BuildContext context, Widget? child) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: ZTheme.statusBarStyleForBrightness(Brightness.light),
            child: child ?? const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
