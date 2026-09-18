import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeleno_v2/core/animation/export.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

/// Иконка вкладки «Поиск» в нижней навигации.
///
/// Повторяет Rive-холст `SearchTab`: лупа со смещённым «зрачком» и бликом
/// читается как глаз. При включении делает pop и раскрывает зрачок
/// (24 кадра), в активном состоянии раз в 30 секунд моргает — зрачок с
/// бликом сжимаются веком, кольцо стоит. Выключается мгновенно, как
/// остальные иконки таб-бара.
///
/// Передавайте в `icon` и `activeIcon` по экземпляру этого виджета —
/// тогда при переключении вкладки состояние анимации сохраняется.
class SearchTabIcon extends StatefulWidget {
  const SearchTabIcon({super.key, required this.active});

  final bool active;

  @override
  State<SearchTabIcon> createState() => _SearchTabIconState();
}

class _SearchTabIconState extends State<SearchTabIcon>
    with TickerProviderStateMixin {
  static const _size = Size(25, 24);
  static const _activateFrames = 24;
  static const _activeFrames = 1800;

  // Центр кольца лупы (11.67, 11) и центр зрачка (12, 9) в долях холста.
  static const _eyeCenter = Alignment(-0.0667, -0.0833);
  static const _pupilCenter = Alignment(-0.04, -0.25);

  static const _easeOut = Cubic(0, 0, 0.2, 1);
  static const _easeIn = Cubic(0.4, 0, 1, 1);
  static const _fadeIn = Cubic(0, 0, 0.4, 1);

  late final _activate = AnimationController(
    vsync: this,
    duration: framesDuration(_activateFrames),
  );
  late final _active = AnimationController(
    vsync: this,
    duration: framesDuration(_activeFrames),
  );
  late final _animation = Listenable.merge([_activate, _active]);

  late final _ringColorT = keyframeTimeline(_activate, _activateFrames, const [
    Keyframe(0, 0, Curves.linear),
    Keyframe(12, 1),
  ]);
  late final _popScale = keyframeTimeline(_activate, _activateFrames, const [
    Keyframe(0, 1, _easeOut),
    Keyframe(8, 1.12),
    Keyframe(20, 1),
  ]);
  late final _pupilScale = keyframeTimeline(_activate, _activateFrames, const [
    Keyframe(4, 0, _easeOut),
    Keyframe(14, 1.25),
    Keyframe(24, 1),
  ]);
  late final _glintOpacity = keyframeTimeline(
    _activate,
    _activateFrames,
    const [Keyframe(12, 0, _fadeIn), Keyframe(22, 1)],
  );
  late final _blinkScaleX = keyframeTimeline(_active, _activeFrames, const [
    Keyframe(0, 1),
    Keyframe(1776, 1, _easeIn),
    Keyframe(1784, 1.08, _easeOut),
    Keyframe(1794, 1),
  ]);
  late final _blinkScaleY = keyframeTimeline(_active, _activeFrames, const [
    Keyframe(0, 1),
    Keyframe(1776, 1, _easeIn),
    Keyframe(1784, 0.08, _easeOut),
    Keyframe(1794, 1),
  ]);

  bool get _motionEnabled => !MediaQuery.disableAnimationsOf(context);

  @override
  void initState() {
    super.initState();
    // Вкладка, активная при старте, показывается сразу без pop.
    if (widget.active) _activate.value = 1;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _syncBlinkLoop();
  }

  @override
  void didUpdateWidget(SearchTabIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.active == widget.active) return;
    if (!widget.active) {
      _activate.value = 0;
      _active
        ..stop()
        ..value = 0;
    } else if (_motionEnabled) {
      _activate.forward(from: 0).whenComplete(_syncBlinkLoop);
    } else {
      _activate.value = 1;
    }
  }

  void _syncBlinkLoop() {
    if (!mounted) return;
    if (widget.active && _motionEnabled) {
      if (!_active.isAnimating) _active.repeat();
    } else {
      _active
        ..stop()
        ..value = 0;
    }
  }

  @override
  void dispose() {
    _activate.dispose();
    _active.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    final pupil = SvgPicture.asset(
      SvgIcons.searchPupil,
      colorFilter: ColorFilter.mode(colors.action, BlendMode.srcIn),
    );
    final glint = SvgPicture.asset(
      SvgIcons.searchGlint,
      colorFilter: ColorFilter.mode(colors.onBrand, BlendMode.srcIn),
    );

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, _) {
        final ringColor = Color.lerp(
          colors.onSurface,
          colors.action,
          _ringColorT.value,
        )!;
        return Transform.scale(
          scale: _popScale.value,
          alignment: _eyeCenter,
          child: SizedBox.fromSize(
            size: _size,
            child: Stack(
              children: [
                SvgPicture.asset(
                  SvgIcons.search,
                  colorFilter: ColorFilter.mode(ringColor, BlendMode.srcIn),
                ),
                Transform.scale(
                  scaleX: _blinkScaleX.value,
                  scaleY: _blinkScaleY.value,
                  alignment: _pupilCenter,
                  child: Stack(
                    children: [
                      Transform.scale(
                        scale: _pupilScale.value,
                        alignment: _pupilCenter,
                        child: pupil,
                      ),
                      Opacity(opacity: _glintOpacity.value, child: glint),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
