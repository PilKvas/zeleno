import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeleno_v2/core/animation/export.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

/// Иконка вкладки «Мой сад» в нижней навигации.
///
/// Повторяет Rive-холст `GardenTab`: при включении росток прорастает —
/// стебель вытягивается снизу, затем от стебля по очереди раскрываются
/// левый и правый лист (36 кадров). Выключается мгновенно.
///
/// Передавайте в `icon` и `activeIcon` по экземпляру этого виджета —
/// тогда при переключении вкладки состояние анимации сохраняется.
class GardenTabIcon extends StatefulWidget {
  const GardenTabIcon({super.key, required this.active});

  final bool active;

  @override
  State<GardenTabIcon> createState() => _GardenTabIconState();
}

class _GardenTabIconState extends State<GardenTabIcon>
    with SingleTickerProviderStateMixin {
  static const _size = Size(24, 24);
  static const _frames = 36;

  // Точки роста в долях холста: основание стебля (12, 22) и места
  // крепления листьев к стеблю (12, 11) и (12, 14.5).
  static const _stemBase = Alignment(0, 0.8333);
  static const _leafLeftBase = Alignment(0, -0.0833);
  static const _leafRightBase = Alignment(0, 0.2083);

  static const _easeOut = Cubic(0, 0, 0.2, 1);

  late final _controller = AnimationController(
    vsync: this,
    duration: framesDuration(_frames),
  );

  late final _colorT = keyframeTimeline(_controller, _frames, const [
    Keyframe(0, 0, Curves.linear),
    Keyframe(12, 1),
  ]);
  late final _stemScaleY = keyframeTimeline(_controller, _frames, const [
    Keyframe(0, 0, _easeOut),
    Keyframe(14, 1),
  ]);
  late final _leafLeftScale = keyframeTimeline(_controller, _frames, const [
    Keyframe(0, 0),
    Keyframe(10, 0, _easeOut),
    Keyframe(22, 1.15),
    Keyframe(30, 1),
  ]);
  late final _leafLeftAngle = keyframeTimeline(_controller, _frames, [
    Keyframe(10, degreesToRadians(35), _easeOut),
    const Keyframe(24, 0),
  ]);
  late final _leafRightScale = keyframeTimeline(_controller, _frames, const [
    Keyframe(0, 0),
    Keyframe(16, 0, _easeOut),
    Keyframe(28, 1.15),
    Keyframe(36, 1),
  ]);
  late final _leafRightAngle = keyframeTimeline(_controller, _frames, [
    Keyframe(16, degreesToRadians(-35), _easeOut),
    const Keyframe(30, 0),
  ]);

  @override
  void initState() {
    super.initState();
    // Вкладка, активная при старте, показывается сразу без прорастания.
    if (widget.active) _controller.value = 1;
  }

  @override
  void didUpdateWidget(GardenTabIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.active == widget.active) return;
    if (!widget.active) {
      _controller.value = 0;
    } else if (MediaQuery.disableAnimationsOf(context)) {
      _controller.value = 1;
    } else {
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    // Неактивная вкладка — статичный серый росток целиком.
    if (!widget.active) {
      return _Sprout(color: colors.onSurface, size: _size);
    }

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) => _Sprout(
        color: Color.lerp(colors.onSurface, colors.action, _colorT.value)!,
        size: _size,
        stemScaleY: _stemScaleY.value,
        leafLeftScale: _leafLeftScale.value,
        leafLeftAngle: _leafLeftAngle.value,
        leafRightScale: _leafRightScale.value,
        leafRightAngle: _leafRightAngle.value,
        stemBase: _stemBase,
        leafLeftBase: _leafLeftBase,
        leafRightBase: _leafRightBase,
      ),
    );
  }
}

class _Sprout extends StatelessWidget {
  const _Sprout({
    required this.color,
    required this.size,
    this.stemScaleY = 1,
    this.leafLeftScale = 1,
    this.leafLeftAngle = 0,
    this.leafRightScale = 1,
    this.leafRightAngle = 0,
    this.stemBase = Alignment.center,
    this.leafLeftBase = Alignment.center,
    this.leafRightBase = Alignment.center,
  });

  final Color color;
  final Size size;
  final double stemScaleY;
  final double leafLeftScale;
  final double leafLeftAngle;
  final double leafRightScale;
  final double leafRightAngle;
  final Alignment stemBase;
  final Alignment leafLeftBase;
  final Alignment leafRightBase;

  @override
  Widget build(BuildContext context) {
    final filter = ColorFilter.mode(color, BlendMode.srcIn);
    return SizedBox.fromSize(
      size: size,
      child: Stack(
        children: [
          Transform.scale(
            scaleY: stemScaleY,
            alignment: stemBase,
            child: SvgPicture.asset(SvgIcons.plantStem, colorFilter: filter),
          ),
          Transform.rotate(
            angle: leafLeftAngle,
            alignment: leafLeftBase,
            child: Transform.scale(
              scale: leafLeftScale,
              alignment: leafLeftBase,
              child: SvgPicture.asset(
                SvgIcons.plantLeafLeft,
                colorFilter: filter,
              ),
            ),
          ),
          Transform.rotate(
            angle: leafRightAngle,
            alignment: leafRightBase,
            child: Transform.scale(
              scale: leafRightScale,
              alignment: leafRightBase,
              child: SvgPicture.asset(
                SvgIcons.plantLeafRight,
                colorFilter: filter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
