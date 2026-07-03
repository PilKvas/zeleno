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
import 'package:zeleno_v2/l10n/gen/app_localizations.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

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
          create: (_) =>
              AuthCubit(authRepository: injection<IAuthRepository>()),
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
        title: 'Flutter Demo',
        routerConfig: _appRouter.config(),
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
