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
        statusBarBrightness:
        brightness == Brightness.dark ? Brightness.light : Brightness.dark,
        statusBarIconBrightness: brightness,
      ),
      child: child,
    );
  }
}
