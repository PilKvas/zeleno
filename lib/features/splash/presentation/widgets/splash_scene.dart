import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeleno_v2/core/animation/export.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

// Холст в Rive 390×844: hero-группа (капля, росток, wordmark, пчела) —
// полоса y 150…450, растения прижаты к нижним углам экрана.
const _kHeroSize = Size(390, 300);
const _kHeroAlignment = Alignment(0, -0.2);

// Росток — иконка 24×24, увеличенная в 6.5 раза. Точки роста в долях
// иконки: основание стебля (12, 22), крепления листьев (12, 11) и (12, 14.5).
const _kSproutSize = 156.0;
const _kStemBase = Alignment(0, 0.8333);
const _kLeafLeftBase = Alignment(0, -0.0833);
const _kLeafRightBase = Alignment(0, 0.2083);

const _kFadeIn = Cubic(0, 0, 0.4, 1);
const _kEaseOut = Cubic(0, 0, 0.2, 1);
const _kEaseIn = Cubic(0.4, 0, 1, 1);
const _kSlideIn = Cubic(0.2, 0.8, 0.4, 1);
const _kGrow = Cubic(0.2, 0.9, 0.4, 1);
const _kSettle = Cubic(0.4, 0, 0.6, 1);
const _kFlyIn = Cubic(0.2, 0.6, 0.4, 1);

/// Сцена сплеша, повторяет Rive-холст `Splash`.
///
/// Интро 120 кадров: монстера и кактус выезжают снизу, капля падает на
/// почву — круги по воде и тень, из неё прорастает росток (стебель, затем
/// листья с overshoot), всплывает wordmark, влетает пчела. Дальше idle-луп
/// 240 кадров: растения и листья покачиваются, пчела парит.
///
/// Хаптика в ключевых точках, как свойство `haptic` на таймлайне Rive:
/// удар капли, раскрытие каждого листа, появление wordmark.
/// [onIntroComplete] вызывается по окончании интро (при «Уменьшить
/// движение» — сразу).
class SplashScene extends StatefulWidget {
  const SplashScene({super.key, this.onIntroComplete});

  final VoidCallback? onIntroComplete;

  @override
  State<SplashScene> createState() => _SplashSceneState();
}

class _SplashSceneState extends State<SplashScene>
    with TickerProviderStateMixin, IntroIdleAnimation {
  @override
  int get introFrames => 120;
  @override
  int get idleFrames => 240;

  bool _eventsAttached = false;

  // --- Растения по нижним углам ---

  late final _monsteraOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(0, 0, _kFadeIn),
    Keyframe(22, 1),
  ]);
  late final _monsteraIntroDy = keyframeTimeline(intro, introFrames, const [
    Keyframe(0, 40, _kSlideIn),
    Keyframe(34, -3, _kSettle),
    Keyframe(48, 0),
  ]);
  late final _monsteraIntroAngle = keyframeTimeline(intro, introFrames, [
    Keyframe(0, degreesToRadians(-3), _kSlideIn),
    const Keyframe(40, 0),
  ]);
  late final _monsteraAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(60, degreesToRadians(1.2)),
    const Keyframe(120, 0),
    Keyframe(180, degreesToRadians(-1.2)),
    const Keyframe(240, 0),
  ]);

  late final _cactusOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(6, 0, _kFadeIn),
    Keyframe(28, 1),
  ]);
  late final _cactusIntroDy = keyframeTimeline(intro, introFrames, const [
    Keyframe(6, 40, _kSlideIn),
    Keyframe(40, -3, _kSettle),
    Keyframe(54, 0),
  ]);
  late final _cactusIntroAngle = keyframeTimeline(intro, introFrames, [
    Keyframe(6, degreesToRadians(3), _kSlideIn),
    const Keyframe(46, 0),
  ]);
  late final _cactusAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(60, degreesToRadians(-0.7)),
    const Keyframe(120, 0),
    Keyframe(180, degreesToRadians(0.5)),
    const Keyframe(240, 0),
  ]);

  // --- Капля: ускоряясь падает на почву и исчезает в момент удара ---

  late final _dropOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(8, 0, _kFadeIn),
    Keyframe(16, 1, Curves.linear),
    Keyframe(30, 1, Curves.linear),
    Keyframe(31, 0),
  ]);
  late final _dropDy = keyframeTimeline(intro, introFrames, const [
    Keyframe(8, 0, _kEaseIn),
    Keyframe(30, 200),
  ]);
  late final _dropScaleX = keyframeTimeline(intro, introFrames, const [
    Keyframe(8, 1, _kEaseIn),
    Keyframe(30, 0.94),
  ]);
  late final _dropScaleY = keyframeTimeline(intro, introFrames, const [
    Keyframe(8, 1, _kEaseIn),
    Keyframe(30, 1.1),
  ]);

  // --- Круги по воде и тень-«почва» под ростком ---

  late final _rippleOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(29, 0, Curves.linear),
    Keyframe(30, 0.9, _kEaseOut),
    Keyframe(56, 0),
  ]);
  late final _rippleScale = keyframeTimeline(intro, introFrames, const [
    Keyframe(30, 0.1, _kEaseOut),
    Keyframe(56, 1),
  ]);
  late final _groundOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(30, 0, _kFadeIn),
    Keyframe(50, 1),
  ]);
  late final _groundScaleX = keyframeTimeline(intro, introFrames, const [
    Keyframe(30, 0.3, _kEaseOut),
    Keyframe(56, 1),
  ]);

  // --- Росток: стебель тянется вверх, листья раскрываются с overshoot ---

  late final _stemScaleY = keyframeTimeline(intro, introFrames, const [
    Keyframe(30, 0, _kEaseOut),
    Keyframe(48, 1),
  ]);
  late final _leafLeftScale = keyframeTimeline(intro, introFrames, const [
    Keyframe(42, 0, _kEaseOut),
    Keyframe(54, 1.15, _kSettle),
    Keyframe(62, 1),
  ]);
  late final _leafLeftIntroAngle = keyframeTimeline(intro, introFrames, [
    Keyframe(42, degreesToRadians(35), _kEaseOut),
    const Keyframe(56, 0),
  ]);
  late final _leafLeftAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(60, degreesToRadians(2)),
    const Keyframe(120, 0),
    Keyframe(180, degreesToRadians(-1.5)),
    const Keyframe(240, 0),
  ]);
  late final _leafRightScale = keyframeTimeline(intro, introFrames, const [
    Keyframe(48, 0, _kEaseOut),
    Keyframe(60, 1.15, _kSettle),
    Keyframe(68, 1),
  ]);
  late final _leafRightIntroAngle = keyframeTimeline(intro, introFrames, [
    Keyframe(48, degreesToRadians(-35), _kEaseOut),
    const Keyframe(62, 0),
  ]);
  late final _leafRightAngle = keyframeTimeline(idle, idleFrames, [
    const Keyframe(0, 0),
    Keyframe(60, degreesToRadians(-2)),
    const Keyframe(120, 0),
    Keyframe(180, degreesToRadians(1.5)),
    const Keyframe(240, 0),
  ]);

  // --- Wordmark всплывает под ростком ---

  late final _wordmarkOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(64, 0, _kFadeIn),
    Keyframe(86, 1),
  ]);
  late final _wordmarkDy = keyframeTimeline(intro, introFrames, const [
    Keyframe(64, 14, _kGrow),
    Keyframe(92, 0),
  ]);

  // --- Пчела влетает слева сверху и парит у ростка ---

  late final _beeOpacity = keyframeTimeline(intro, introFrames, const [
    Keyframe(72, 0, _kFadeIn),
    Keyframe(90, 1),
  ]);
  late final _beeIntroDx = keyframeTimeline(intro, introFrames, const [
    Keyframe(72, -60, _kFlyIn),
    Keyframe(112, 0),
  ]);
  late final _beeIntroDy = keyframeTimeline(intro, introFrames, const [
    Keyframe(72, -52, _kFlyIn),
    Keyframe(112, 0),
  ]);
  late final _beeIntroAngle = keyframeTimeline(intro, introFrames, [
    Keyframe(72, degreesToRadians(-14), _kFlyIn),
    const Keyframe(112, 0),
  ]);
  late final _beeDx = keyframeTimeline(idle, idleFrames, const [
    Keyframe(0, 0),
    Keyframe(80, 12),
    Keyframe(160, -9),
    Keyframe(240, 0),
  ]);
  late final _beeDy = keyframeTimeline(idle, idleFrames, const [
    Keyframe(0, 0),
    Keyframe(40, -6),
    Keyframe(80, 1),
    Keyframe(120, -5),
    Keyframe(160, 0),
    Keyframe(200, -5),
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
  void initState() {
    super.initState();
    intro.addStatusListener((status) {
      if (status == .completed) widget.onIntroComplete?.call();
    });
  }

  @override
  void didChangeDependencies() {
    // Хаптика подписывается до старта интро и только при включённой
    // анимации: прыжок в конец при «Уменьшить движение» не должен вибрировать.
    if (!_eventsAttached) {
      _eventsAttached = true;
      if (!MediaQuery.disableAnimationsOf(context)) {
        addTimelineEvents(intro, introFrames, const [
          TimelineEvent(30, HapticFeedback.mediumImpact),
          TimelineEvent(50, HapticFeedback.lightImpact),
          TimelineEvent(56, HapticFeedback.lightImpact),
          TimelineEvent(66, HapticFeedback.selectionClick),
        ]);
      }
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);

    return RepaintBoundary(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: -35,
            bottom: 0,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(
                ZImages.woollyPlant421,
                width: 214,
                height: 286,
              ),
              builder: (context, child) => Transform.translate(
                offset: Offset(0, _monsteraIntroDy.value),
                child: Transform.rotate(
                  angle: _monsteraIntroAngle.value + _monsteraAngle.value,
                  alignment: Alignment.bottomCenter,
                  child: Opacity(opacity: _monsteraOpacity.value, child: child),
                ),
              ),
            ),
          ),
          Positioned(
            right: -19,
            bottom: 0,
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(ZImages.woollyCactus, width: 158, height: 265),
              builder: (context, child) => Transform.translate(
                offset: Offset(0, _cactusIntroDy.value),
                child: Transform.rotate(
                  angle: _cactusIntroAngle.value + _cactusAngle.value,
                  alignment: Alignment.bottomCenter,
                  child: Opacity(opacity: _cactusOpacity.value, child: child),
                ),
              ),
            ),
          ),
          Align(
            alignment: _kHeroAlignment,
            child: FittedScene(
              size: _kHeroSize,
              child: Stack(
                clipBehavior: .none,
                children: [
                  Positioned(
                    left: 135,
                    top: 210,
                    child: AnimatedBuilder(
                      animation: intro,
                      child: SizedBox(
                        width: 120,
                        height: 16,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: colors.brand.withValues(alpha: 0.12),
                            borderRadius: const BorderRadius.all(
                              Radius.elliptical(60, 8),
                            ),
                          ),
                        ),
                      ),
                      builder: (context, child) => Transform.scale(
                        scaleX: _groundScaleX.value,
                        child: Opacity(
                          opacity: _groundOpacity.value,
                          child: child,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 147,
                    top: 201,
                    child: AnimatedBuilder(
                      animation: intro,
                      child: const SizedBox(
                        width: 96,
                        height: 30,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.fromBorderSide(
                              BorderSide(color: Color(0xFF7FC4EA), width: 3),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.elliptical(48, 15),
                            ),
                          ),
                        ),
                      ),
                      builder: (context, child) => Transform.scale(
                        scale: _rippleScale.value,
                        child: Opacity(
                          opacity: _rippleOpacity.value,
                          child: child,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 260,
                    child: AnimatedBuilder(
                      animation: intro,
                      child: Text(
                        'FROM SEED',
                        textAlign: .center,
                        style: TextStyle(
                          fontFamily: 'Monserrat',
                          fontSize: 28,
                          fontWeight: .bold,
                          letterSpacing: 2,
                          color: colors.regularTextColor,
                        ),
                      ),
                      builder: (context, child) => Transform.translate(
                        offset: Offset(0, _wordmarkDy.value),
                        child: Opacity(
                          opacity: _wordmarkOpacity.value,
                          child: child,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 117,
                    top: 73.5,
                    child: AnimatedBuilder(
                      animation: animation,
                      builder: (context, _) => _Sprout(
                        stemColor: colors.brand,
                        leafColor: colors.mainGradientColor2,
                        stemScaleY: _stemScaleY.value,
                        leafLeftScale: _leafLeftScale.value,
                        leafLeftAngle:
                            _leafLeftIntroAngle.value + _leafLeftAngle.value,
                        leafRightScale: _leafRightScale.value,
                        leafRightAngle:
                            _leafRightIntroAngle.value + _leafRightAngle.value,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 185,
                    top: -16,
                    child: AnimatedBuilder(
                      animation: intro,
                      child: SvgPicture.asset(
                        SvgIcons.drop,
                        width: 20,
                        height: 32,
                      ),
                      builder: (context, child) => Transform.translate(
                        offset: Offset(0, _dropDy.value),
                        child: Transform.scale(
                          scaleX: _dropScaleX.value,
                          scaleY: _dropScaleY.value,
                          child: Opacity(
                            opacity: _dropOpacity.value,
                            child: child,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 44.5,
                    top: 40,
                    child: AnimatedBuilder(
                      animation: animation,
                      child: Image.asset(
                        ZImages.woollyBee,
                        width: 71,
                        height: 64,
                      ),
                      builder: (context, child) => Transform.translate(
                        offset: Offset(
                          _beeIntroDx.value + _beeDx.value,
                          _beeIntroDy.value + _beeDy.value,
                        ),
                        child: Transform.rotate(
                          angle: _beeIntroAngle.value + _beeAngle.value,
                          child: Opacity(
                            opacity: _beeOpacity.value,
                            child: child,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Росток из трёх SVG-частей (стебель и два листа) с точками роста
/// в основании стебля и местах крепления листьев, как в [GardenTabIcon].
class _Sprout extends StatelessWidget {
  const _Sprout({
    required this.stemColor,
    required this.leafColor,
    required this.stemScaleY,
    required this.leafLeftScale,
    required this.leafLeftAngle,
    required this.leafRightScale,
    required this.leafRightAngle,
  });

  final Color stemColor;
  final Color leafColor;
  final double stemScaleY;
  final double leafLeftScale;
  final double leafLeftAngle;
  final double leafRightScale;
  final double leafRightAngle;

  @override
  Widget build(BuildContext context) {
    final leafFilter = ColorFilter.mode(leafColor, BlendMode.srcIn);
    return SizedBox.square(
      dimension: _kSproutSize,
      child: Stack(
        children: [
          Transform.scale(
            scaleY: stemScaleY,
            alignment: _kStemBase,
            child: SvgPicture.asset(
              SvgIcons.plantStem,
              width: _kSproutSize,
              height: _kSproutSize,
              colorFilter: ColorFilter.mode(stemColor, BlendMode.srcIn),
            ),
          ),
          Transform.rotate(
            angle: leafLeftAngle,
            alignment: _kLeafLeftBase,
            child: Transform.scale(
              scale: leafLeftScale,
              alignment: _kLeafLeftBase,
              child: SvgPicture.asset(
                SvgIcons.plantLeafLeft,
                width: _kSproutSize,
                height: _kSproutSize,
                colorFilter: leafFilter,
              ),
            ),
          ),
          Transform.rotate(
            angle: leafRightAngle,
            alignment: _kLeafRightBase,
            child: Transform.scale(
              scale: leafRightScale,
              alignment: _kLeafRightBase,
              child: SvgPicture.asset(
                SvgIcons.plantLeafRight,
                width: _kSproutSize,
                height: _kSproutSize,
                colorFilter: leafFilter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
