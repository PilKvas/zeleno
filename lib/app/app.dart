import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/dimensions.dart';
import 'package:zeleno_v2/uikit/theme/theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {


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
    return MaterialApp(
      theme: zelenoThemeLight.createThemeData(),
      darkTheme: zelenoThemeDark.createThemeData(),
      title: 'Flutter Z',
    );
  }
}