import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ZLoading extends StatelessWidget {
  const ZLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/loading.json');
  }
}
