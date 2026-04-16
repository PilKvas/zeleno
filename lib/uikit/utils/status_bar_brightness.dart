import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ZStatusBarBrightness extends StatelessWidget {
  final Widget child;

  final Brightness brightness;

  const ZStatusBarBrightness({
    super.key,
    required this.child,
    required this.brightness,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness:
            brightness.isDart ? Brightness.dark : Brightness.light,
        statusBarIconBrightness:
            brightness.isLight ? Brightness.dark : Brightness.light,
      ),
      child: child,
    );
  }
}

extension on Brightness {
  bool get isDart => this == Brightness.dark;

  bool get isLight => this == Brightness.light;
}
