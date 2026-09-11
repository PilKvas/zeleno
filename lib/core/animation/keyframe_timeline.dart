import 'dart:math' as math;

import 'package:flutter/animation.dart';

/// Ключевой кадр таймлайна. Как в Rive, [curve] задаёт кривую сегмента
/// от этого ключа до следующего.
class Keyframe {
  const Keyframe(this.frame, this.value, [this.curve = Curves.easeInOut]);

  final int frame;
  final double value;
  final Curve curve;
}

/// Собирает анимацию из ключей по кадрам таймлайна длиной [frames].
/// До первого и после последнего ключа значение удерживается.
Animation<double> keyframeTimeline(
  AnimationController controller,
  int frames,
  List<Keyframe> keys,
) {
  final items = <TweenSequenceItem<double>>[
    if (keys.first.frame > 0)
      TweenSequenceItem(
        tween: ConstantTween(keys.first.value),
        weight: keys.first.frame.toDouble(),
      ),
    for (var i = 0; i < keys.length - 1; i++)
      TweenSequenceItem(
        tween: Tween(
          begin: keys[i].value,
          end: keys[i + 1].value,
        ).chain(CurveTween(curve: keys[i].curve)),
        weight: (keys[i + 1].frame - keys[i].frame).toDouble(),
      ),
    if (keys.last.frame < frames)
      TweenSequenceItem(
        tween: ConstantTween(keys.last.value),
        weight: (frames - keys.last.frame).toDouble(),
      ),
  ];
  return TweenSequence(items).animate(controller);
}

double degreesToRadians(double degrees) => degrees * math.pi / 180;
