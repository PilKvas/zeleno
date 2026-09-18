import 'package:flutter/material.dart';
import 'package:zeleno_v2/core/animation/export.dart';
import 'package:zeleno_v2/resources/export.dart';

/// Фон экранов авторизации: кактус у правого края и пчела слева сверху.
///
/// Тайминги повторяют Rive-холст `AuthBackground`: интро 60 кадров
/// (кактус выезжает справа, пчела влетает), затем idle-луп 240 кадров.
class AuthBackground extends StatefulWidget {
  const AuthBackground({super.key});

  @override
  State<AuthBackground> createState() => _AuthBackgroundState();
}

class _AuthBackgroundState extends State<AuthBackground>
    with TickerProviderStateMixin, IntroIdleAnimation {
  static const _fadeIn = Cubic(0, 0, 0.4, 1);
  static const _slideIn = Cubic(0.2, 0.8, 0.4, 1);
  static const _flyIn = Cubic(0.2, 0.6, 0.4, 1);

  @override
  int get introFrames => 60;
  @override
  int get idleFrames => 240;

  late final _cactusOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(0, 0, _fadeIn),
    Keyframe(25, 1),
  ]);
  late final _cactusIntroDx = keyframeTimeline(intro, introFrames, const [
    Keyframe(0, 42, _slideIn),
    Keyframe(42, -3),
    Keyframe(60, 0),
  ]);
  late final _cactusAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(60, degreesToRadians(-0.7)),
    const Keyframe(120, 0),
    Keyframe(180, degreesToRadians(0.5)),
    const Keyframe(240, 0),
  ]);

  late final _beeOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(10, 0, _fadeIn),
    Keyframe(30, 1),
  ]);
  late final _beeIntroDx = keyframeTimeline(intro, introFrames, const [
    Keyframe(10, -45.5, _flyIn),
    Keyframe(60, 0),
  ]);
  late final _beeIntroDy = keyframeTimeline(intro, introFrames, const [
    Keyframe(10, -22, _flyIn),
    Keyframe(60, 0),
  ]);
  late final _beeIntroAngle = keyframeTimeline(intro, introFrames, [
    Keyframe(10, degreesToRadians(-12), _flyIn),
    const Keyframe(60, 0),
  ]);
  late final _beeDx = keyframeTimeline(idle, idleFrames, const [
    Keyframe(0, 0),
    Keyframe(80, 12.5),
    Keyframe(160, -9.5),
    Keyframe(240, 0),
  ]);
  late final _beeDy = keyframeTimeline(idle, idleFrames, const [
    Keyframe(0, 0),
    Keyframe(40, 5),
    Keyframe(80, -1),
    Keyframe(120, 6),
    Keyframe(160, 0),
    Keyframe(200, 5.5),
    Keyframe(240, 0),
  ]);
  late final _beeAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(60, degreesToRadians(5)),
    const Keyframe(120, 0),
    Keyframe(180, degreesToRadians(-5)),
    const Keyframe(240, 0),
  ]);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 70,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(ZImages.woollyBee),
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
          Positioned(
            right: 0,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(ZImages.woollyCactus),
              builder: (context, child) => Transform.translate(
                offset: Offset(_cactusIntroDx.value, 0),
                child: Transform.rotate(
                  angle: _cactusAngle.value,
                  alignment: Alignment.bottomRight,
                  child: Opacity(opacity: _cactusOpacity.value, child: child),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
