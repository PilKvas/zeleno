import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/button/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

class ZTabSelector extends StatelessWidget {
  const ZTabSelector({
    super.key,
    required this.title,
    this.trailing,
    required this.tabs,
    required this.selectedIndexes,
    required this.onToggled,
  });

  final String title;

  /// Слот справа от заголовка — например, кнопка сброса.
  final Widget? trailing;
  final List<String> tabs;

  /// Множественный выбор: повторное нажатие снимает отметку.
  final Set<int> selectedIndexes;
  final ValueChanged<int> onToggled;

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    final typography = ZTypography.of(context);

    final Color activeColor = colors.action;
    final Color labelColor = colors.onSurface;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: typography.title.copyWith(color: labelColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (trailing != null) trailing!,
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 40,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              spacing: 10,
              children: List.generate(tabs.length, (index) {
                return _Tab(
                  label: tabs[index],
                  isSelected: selectedIndexes.contains(index),
                  activeColor: activeColor,
                  inactiveColor: colors.surface,
                  activeTextColor: colors.onAction,
                  inactiveTextColor: labelColor,
                  onTap: () => onToggled(index),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}

class _Tab extends StatelessWidget {
  const _Tab({
    required this.label,
    required this.isSelected,
    required this.activeColor,
    required this.inactiveColor,
    required this.activeTextColor,
    required this.inactiveTextColor,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final Color activeColor;
  final Color inactiveColor;
  final Color activeTextColor;
  final Color inactiveTextColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ZPressable(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOut,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? activeColor : inactiveColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: ZTypography.of(context).body.copyWith(
                color: isSelected ? activeTextColor : inactiveTextColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
