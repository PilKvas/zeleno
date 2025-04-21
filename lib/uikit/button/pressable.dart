import 'package:flutter/material.dart';

/// GestureDetector с анимацией нажатия.
class ZPressable extends StatefulWidget {
  /// Колбек нажатия по кнопке.
  final VoidCallback? onTap;

  /// Элемент, который будет сжиматься при нажатии.
  final Widget child;

  final ValueChanged<bool>? onHover;

  /// @nodoc
  const ZPressable({
    required this.child,
    this.onTap,
    super.key,
    this.onHover,
  });

  @override
  State<ZPressable> createState() => _ZPressableState();
}

class _ZPressableState extends State<ZPressable> {
  late bool isOnPress;
  late bool isHover;

  @override
  void initState() {
    super.initState();

    isOnPress = false;
    isHover = false;
  }

  void changeHover(bool value) {
    if (widget.onHover != null) {
      widget.onHover!(value);
    }

    setState(() => isHover = value);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.onTap == null) {
      return widget.child;
    }

    return MouseRegion(
      onEnter: (_) => changeHover(true),
      onExit: (_) => changeHover(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        onTapUp: (_) {
          setState(() => isOnPress = false);
        },
        onTapDown: (_) {
          setState(() => isOnPress = true);
        },
        onTapCancel: () {
          setState(() => isOnPress = false);
        },
        behavior: HitTestBehavior.opaque,
        child: AnimatedOpacity(
          opacity: isOnPress ? 0.65 : 1,
          duration: const Duration(milliseconds: 200),
          curve: Curves.fastOutSlowIn,
          child: widget.child,
        ),
      ),
    );
  }
}
