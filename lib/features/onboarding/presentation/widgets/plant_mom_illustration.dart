import 'package:flutter/material.dart';
import 'package:zeleno_v2/core/animation/export.dart';
import 'package:zeleno_v2/resources/export.dart';

/// Иллюстрация первой страницы онбординга, собранная из четырёх слоёв.
///
/// Тайминги повторяют Rive-холст `PlantMom`: интро 60 кадров (каскад
/// полка → растение → персонаж → пчела), затем idle-луп 180 кадров.
/// Занимает место как прежняя картинка `woolly-plant-mom_1_1.png`.
class PlantMomIllustration extends StatefulWidget {
  const PlantMomIllustration({super.key});

  @override
  State<PlantMomIllustration> createState() => _PlantMomIllustrationState();
}

class _PlantMomIllustrationState extends State<PlantMomIllustration>
    with TickerProviderStateMixin, IntroIdleAnimation {
  // Сцена в Rive 456×456; слева срезано 62 px, как у прежней картинки.
  static const _sceneSize = Size(394, 456);
  static const _naturalSize = Size(325, 377);

  static const _fadeIn = Cubic(0, 0, 0.4, 1);
  static const _grow = Cubic(0.2, 0.9, 0.4, 1);
  static const _settle = Cubic(0.4, 0, 0.6, 1);
  static const _flyIn = Cubic(0.2, 0.6, 0.4, 1);

  @override
  int get introFrames => 60;
  @override
  int get idleFrames => 180;

  late final _shelfOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(0, 0, _fadeIn),
    Keyframe(20, 1),
  ]);
  late final _shelfIntroDy = keyframeTimeline(intro, introFrames, const [
    Keyframe(0, 6, _fadeIn),
    Keyframe(20, 0),
  ]);

  late final _plantOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(5, 0, _fadeIn),
    Keyframe(28, 1),
  ]);
  late final _plantIntroScaleX = keyframeTimeline(intro, introFrames, const [
    Keyframe(5, 0.90, _grow),
    Keyframe(40, 1.02, _settle),
    Keyframe(60, 1),
  ]);
  late final _plantIntroScaleY = keyframeTimeline(intro, introFrames, const [
    Keyframe(5, 0.85, _grow),
    Keyframe(40, 1.03, _settle),
    Keyframe(60, 1),
  ]);
  late final _plantAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(45, degreesToRadians(1.4)),
    const Keyframe(90, 0),
    Keyframe(135, degreesToRadians(-1.4)),
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
    Keyframe(90, degreesToRadians(0.35)),
    const Keyframe(180, 0),
  ]);

  late final _beeOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(28, 0, _fadeIn),
    Keyframe(48, 1),
  ]);
  late final _beeIntroDx = keyframeTimeline(intro, introFrames, const [
    Keyframe(28, 46.5, _flyIn),
    Keyframe(60, 0),
  ]);
  late final _beeIntroDy = keyframeTimeline(intro, introFrames, const [
    Keyframe(28, -31.5, _flyIn),
    Keyframe(60, 0),
  ]);
  late final _beeIntroAngle = keyframeTimeline(intro, introFrames, [
    Keyframe(28, degreesToRadians(-14), _flyIn),
    const Keyframe(60, 0),
  ]);
  late final _beeDx = keyframeTimeline(idle, idleFrames, const [
    Keyframe(0, 0),
    Keyframe(60, 9.5),
    Keyframe(120, -7.5),
    Keyframe(180, 0),
  ]);
  late final _beeDy = keyframeTimeline(idle, idleFrames, const [
    Keyframe(0, 0),
    Keyframe(30, -4),
    Keyframe(60, 1),
    Keyframe(90, -4.5),
    Keyframe(120, 0.5),
    Keyframe(150, -4),
    Keyframe(180, 0),
  ]);
  late final _beeAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(45, degreesToRadians(6)),
    const Keyframe(90, 0),
    Keyframe(135, degreesToRadians(-6)),
    const Keyframe(180, 0),
  ]);

  @override
  Widget build(BuildContext context) {
    return FittedScene(
      size: _sceneSize,
      naturalSize: _naturalSize,
      child: Stack(
        children: [
          Positioned(
            left: -22,
            top: 120,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(ZImages.plantMomShelf, width: 98, height: 13),
              builder: (context, child) => Transform.translate(
                offset: Offset(0, _shelfIntroDy.value),
                child: Opacity(opacity: _shelfOpacity.value, child: child),
              ),
            ),
          ),
          Positioned(
            left: 1,
            top: 203,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(
                ZImages.plantMomPlant,
                width: 129,
                height: 243,
              ),
              builder: (context, child) => Transform.rotate(
                angle: _plantAngle.value,
                alignment: Alignment.bottomCenter,
                child: Transform.scale(
                  scaleX: _plantIntroScaleX.value,
                  scaleY: _plantIntroScaleY.value,
                  alignment: Alignment.bottomCenter,
                  child: Opacity(opacity: _plantOpacity.value, child: child),
                ),
              ),
            ),
          ),
          Positioned(
            left: 75,
            top: 66,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(
                ZImages.plantMomPerson,
                width: 319,
                height: 379,
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
            left: 134,
            top: 24,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(ZImages.plantMomBee, width: 71, height: 51),
              builder: (context, child) => Transform.translate(
                offset: Offset(
                  _beeIntroDx.value + _beeDx.value,
                  _beeIntroDy.value + _beeDy.value,
                ),
                child: Transform.rotate(
                  angle: _beeIntroAngle.value + _beeAngle.value,
                  child: Opacity(opacity: _beeOpacity.value, child: child),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
