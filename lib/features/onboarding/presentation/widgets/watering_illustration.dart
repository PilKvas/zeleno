import 'package:flutter/material.dart';
import 'package:zeleno_v2/core/animation/export.dart';
import 'package:zeleno_v2/resources/export.dart';

/// Иллюстрация третьей страницы онбординга: персонаж поливает растения.
///
/// Четыре слоя из `woolly-taking-care-of-plants-3_1.png`: растение и кактус
/// покачиваются, персонаж дышит и чуть наклоняется к лейке, из носика
/// раз в полтора секунды падает капля.
class WateringIllustration extends StatefulWidget {
  const WateringIllustration({super.key});

  @override
  State<WateringIllustration> createState() => _WateringIllustrationState();
}

class _WateringIllustrationState extends State<WateringIllustration>
    with TickerProviderStateMixin, IntroIdleAnimation {
  static const _sceneSize = Size(351, 426);

  static const _fadeIn = Cubic(0, 0, 0.4, 1);
  static const _grow = Cubic(0.2, 0.9, 0.4, 1);
  static const _settle = Cubic(0.4, 0, 0.6, 1);

  @override
  int get introFrames => 60;
  @override
  int get idleFrames => 180;

  late final _leavesOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(5, 0, _fadeIn),
    Keyframe(28, 1),
  ]);
  late final _leavesIntroScaleX = keyframeTimeline(intro, introFrames, const [
    Keyframe(5, 0.90, _grow),
    Keyframe(40, 1.02, _settle),
    Keyframe(60, 1),
  ]);
  late final _leavesIntroScaleY = keyframeTimeline(intro, introFrames, const [
    Keyframe(5, 0.85, _grow),
    Keyframe(40, 1.03, _settle),
    Keyframe(60, 1),
  ]);
  late final _leavesAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(45, degreesToRadians(1.4)),
    const Keyframe(90, 0),
    Keyframe(135, degreesToRadians(-1.4)),
    const Keyframe(180, 0),
  ]);

  late final _cactusOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(12, 0, _fadeIn),
    Keyframe(35, 1),
  ]);
  late final _cactusIntroScaleX = keyframeTimeline(intro, introFrames, const [
    Keyframe(12, 0.92, _grow),
    Keyframe(45, 1.02, _settle),
    Keyframe(60, 1),
  ]);
  late final _cactusIntroScaleY = keyframeTimeline(intro, introFrames, const [
    Keyframe(12, 0.88, _grow),
    Keyframe(45, 1.03, _settle),
    Keyframe(60, 1),
  ]);
  late final _cactusAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(45, degreesToRadians(-0.7)),
    const Keyframe(90, 0),
    Keyframe(135, degreesToRadians(0.5)),
    const Keyframe(180, 0),
  ]);

  late final _personOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(10, 0, _fadeIn),
    Keyframe(34, 1),
  ]);
  late final _personIntroDy = keyframeTimeline(intro, introFrames, const [
    Keyframe(10, 17, _grow),
    Keyframe(45, -2, _settle),
    Keyframe(60, 0),
  ]);
  late final _personIntroScaleY = keyframeTimeline(intro, introFrames, const [
    Keyframe(10, 0.97, _grow),
    Keyframe(45, 1.005, _settle),
    Keyframe(60, 1),
  ]);
  late final _personDy = keyframeTimeline(idle, idleFrames, const [
    Keyframe(0, 0),
    Keyframe(90, -2.5),
    Keyframe(180, 0),
  ]);
  late final _personScaleY = keyframeTimeline(idle, idleFrames, const [
    Keyframe(0, 1),
    Keyframe(90, 1.007),
    Keyframe(180, 1),
  ]);
  late final _personAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(90, degreesToRadians(-0.5)),
    const Keyframe(180, 0),
  ]);

  // Капля: два падения за idle-луп. Появляется у носика, ускоряясь падает
  // в листья и гаснет; пока невидима — мгновенно возвращается к носику.
  static const _dropPeriod = 90;
  late final _dropOpacity = keyframeTimeline(
    idle,
    idleFrames,
    _repeat(const [
      Keyframe(0, 0, _fadeIn),
      Keyframe(8, 1),
      Keyframe(30, 1, Curves.easeIn),
      Keyframe(40, 0),
    ]),
  );
  late final _dropDy = keyframeTimeline(
    idle,
    idleFrames,
    _repeat(const [
      Keyframe(0, 0, Curves.easeIn),
      Keyframe(40, 44, Threshold(1)),
      Keyframe(50, 0),
    ]),
  );

  List<Keyframe> _repeat(List<Keyframe> cycle) => [
    for (var i = 0; i < idleFrames ~/ _dropPeriod; i++)
      for (final k in cycle)
        Keyframe(k.frame + i * _dropPeriod, k.value, k.curve),
  ];

  @override
  Widget build(BuildContext context) {
    return FittedScene(
      size: _sceneSize,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 169,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(
                ZImages.wateringLeaves,
                width: 58,
                height: 192,
              ),
              builder: (context, child) => Transform.rotate(
                angle: _leavesAngle.value,
                alignment: Alignment.bottomCenter,
                child: Transform.scale(
                  scaleX: _leavesIntroScaleX.value,
                  scaleY: _leavesIntroScaleY.value,
                  alignment: Alignment.bottomCenter,
                  child: Opacity(opacity: _leavesOpacity.value, child: child),
                ),
              ),
            ),
          ),
          Positioned(
            left: 83,
            top: 221,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(
                ZImages.wateringCactus,
                width: 71,
                height: 141,
              ),
              builder: (context, child) => Transform.rotate(
                angle: _cactusAngle.value,
                alignment: Alignment.bottomCenter,
                child: Transform.scale(
                  scaleX: _cactusIntroScaleX.value,
                  scaleY: _cactusIntroScaleY.value,
                  alignment: Alignment.bottomCenter,
                  child: Opacity(opacity: _cactusOpacity.value, child: child),
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 63,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(
                ZImages.wateringPerson,
                width: 314,
                height: 294,
              ),
              builder: (context, child) => Transform.translate(
                offset: Offset(0, _personIntroDy.value + _personDy.value),
                child: Transform.rotate(
                  angle: _personAngle.value,
                  alignment: Alignment.bottomCenter,
                  child: Transform.scale(
                    scaleY: _personIntroScaleY.value * _personScaleY.value,
                    alignment: Alignment.bottomCenter,
                    child: Opacity(opacity: _personOpacity.value, child: child),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 28,
            top: 186,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(ZImages.wateringDrop, width: 8, height: 18),
              builder: (context, child) => Transform.translate(
                offset: Offset(0, _dropDy.value),
                child: Opacity(opacity: _dropOpacity.value, child: child),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
