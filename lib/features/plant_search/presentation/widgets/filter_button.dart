import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

/// Кнопка фильтров рядом с полем поиска: плитка в цвет поля,
/// при активных фильтрах заливается акцентом.
class FilterButton extends StatelessWidget {
  const FilterButton({super.key, required this.active, required this.onTap});

  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: active ? colors.action : colors.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Icon(
            Icons.tune_rounded,
            size: 22,
            color: active ? colors.onAction : colors.onBackground,
          ),
        ),
      ),
    );
  }
}
