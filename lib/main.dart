import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/app/theme/theme_cubit.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/theme_storage/i_theme_mode_storage.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';
import 'package:zeleno_v2/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:zeleno_v2/features/navigation/router.dart';
import 'package:zeleno_v2/l10n/gen/app_localizations.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/dimensions.dart';
import 'package:zeleno_v2/uikit/theme/theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

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

  final zelenoThemeLight = ZTheme(
    colorScheme: const ZColorScheme.light(),
    typography: ZTypography.based(),
    dimensions: const ZDimensions(),
  );

  final zelenoThemeDark = ZTheme(
    colorScheme: const ZColorScheme.dark(),
    typography: ZTypography.based(),
    dimensions: const ZDimensions(),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(injection<IThemeModeStorage>()),
        ),
        BlocProvider<AuthCubit>(
          create: (_) =>
              AuthCubit(authRepository: injection<IAuthRepository>()),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp.router(
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
            theme: zelenoThemeLight.createThemeData(),
            darkTheme: zelenoThemeDark.createThemeData(),
            themeMode: themeMode,
            title: 'Flutter Demo',
            routerConfig: _appRouter.config(),
            builder: (BuildContext context, Widget? child) {
              final Brightness brightness = Theme.of(context).brightness;
              return AnnotatedRegion<SystemUiOverlayStyle>(
                value: ZTheme.statusBarStyleForBrightness(brightness),
                child: child ?? const SizedBox.shrink(),
              );
            },
          );
        },
      ),
    );
  }
}
