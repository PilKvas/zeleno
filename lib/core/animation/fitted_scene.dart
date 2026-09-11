import 'package:flutter/material.dart';

/// Сцена фиксированного [size], вписанная в доступное место так же, как
/// `Image.asset(fit: BoxFit.contain)`: не растёт больше [naturalSize]
/// (по умолчанию равен [size]), при нехватке места сжимается с сохранением
/// пропорций. Слои сцены перерисовываются отдельно от остального экрана.
class FittedScene extends StatelessWidget {
  const FittedScene({
    super.key,
    required this.size,
    required this.child,
    Size? naturalSize,
  }) : naturalSize = naturalSize ?? size;

  final Size size;
  final Size naturalSize;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: ConstrainedBox(
        constraints: BoxConstraints.loose(naturalSize),
        child: AspectRatio(
          aspectRatio: size.aspectRatio,
          child: FittedBox(
            child: SizedBox.fromSize(size: size, child: child),
          ),
        ),
      ),
    );
  }
}
