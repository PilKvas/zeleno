import 'package:flutter/material.dart';
import 'package:zeleno_v2/core/animation/export.dart';

/// Как растение появляется в интро.
enum PlantIntro {
  /// Прорастает снизу: scale от основания с лёгким overshoot.
  grow,

  /// Выезжает из-за правого края экрана.
  slideFromRight,
}

/// Цельная картинка растения, которая появляется в интро и затем
/// покачивается вокруг [pivot] на ±[swayDegrees].
class SwayingPlantIllustration extends StatefulWidget {
  const SwayingPlantIllustration({
    super.key,
    required this.asset,
    required this.size,
    this.pivot = Alignment.bottomCenter,
    this.intro = PlantIntro.grow,
    this.swayDegrees = 1.4,
    this.idleFrames = 180,
  });

  final String asset;
  final Size size;
  final Alignment pivot;
  final PlantIntro intro;
  final double swayDegrees;
  final int idleFrames;

  @override
  State<SwayingPlantIllustration> createState() =>
      _SwayingPlantIllustrationState();
}

class _SwayingPlantIllustrationState extends State<SwayingPlantIllustration>
    with TickerProviderStateMixin, IntroIdleAnimation {
  static const _fadeIn = Cubic(0, 0, 0.4, 1);
  static const _grow = Cubic(0.2, 0.9, 0.4, 1);
  static const _slideIn = Cubic(0.2, 0.8, 0.4, 1);
  static const _settle = Cubic(0.4, 0, 0.6, 1);

  @override
  int get introFrames => 60;
  @override
  int get idleFrames => widget.idleFrames;

  bool get _grows => widget.intro == PlantIntro.grow;

  late final _opacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(0, 0, _fadeIn),
    Keyframe(25, 1),
  ]);
  late final _introDx = keyframeTimeline(intro, introFrames, [
    Keyframe(0, _grows ? 0 : 42, _slideIn),
    Keyframe(42, _grows ? 0 : -3, _settle),
    const Keyframe(60, 0),
  ]);
  late final _introScaleX = keyframeTimeline(intro, introFrames, [
    Keyframe(0, _grows ? 0.90 : 1, _grow),
    Keyframe(35, _grows ? 1.02 : 1, _settle),
    const Keyframe(60, 1),
  ]);
  late final _introScaleY = keyframeTimeline(intro, introFrames, [
    Keyframe(0, _grows ? 0.85 : 1, _grow),
    Keyframe(35, _grows ? 1.03 : 1, _settle),
    const Keyframe(60, 1),
  ]);
  late final _angle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(idleFrames ~/ 4, degreesToRadians(widget.swayDegrees)),
    Keyframe(idleFrames ~/ 2, 0),
    Keyframe(idleFrames * 3 ~/ 4, degreesToRadians(-widget.swayDegrees)),
    Keyframe(idleFrames, 0),
  ]);

  @override
  Widget build(BuildContext context) {
    return FittedScene(
      size: widget.size,
      child: AnimatedBuilder(
        animation: animation,
        child: Image.asset(
          widget.asset,
          width: widget.size.width,
          height: widget.size.height,
        ),
        builder: (context, child) => Transform.translate(
          offset: Offset(_introDx.value, 0),
          child: Transform.rotate(
            angle: _angle.value,
            alignment: widget.pivot,
            child: Transform.scale(
              scaleX: _introScaleX.value,
              scaleY: _introScaleY.value,
              alignment: widget.pivot,
              child: Opacity(opacity: _opacity.value, child: child),
            ),
          ),
        ),
      ),
    );
  }
}
