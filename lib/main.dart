import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/features/navigation/router.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/dimensions.dart';
import 'package:zeleno_v2/uikit/theme/theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  final dio = Dio();
  dio.get("http://213.171.4.22/api/search/species");

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
    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ru'),
      ],
      theme: zelenoThemeLight.createThemeData(),
      darkTheme: zelenoThemeDark.createThemeData(),
      title: 'Flutter Demo',
      routerConfig: _appRouter.config(),
    );
  }
}
