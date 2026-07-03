import 'package:flutter/material.dart';
import 'package:zeleno_v2/resources/export.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          left: 70,
          child: Image.asset(ZImages.woollyBee),
        ),
        Positioned(
          right: 0,
          child: Image.asset(ZImages.woollyCactus),
        ),
      ],
    );
  }
}
