import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/button/pressable.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

class ZTabSelector extends StatelessWidget {
  const ZTabSelector({
    super.key,
    required this.title,
    this.trailingText,
    this.onTrailingTap,
    required this.tabs,
    required this.selectedIndex,
    required this.onSelected,
    this.allowClearOnReselect = true,
  });

  final String title;
  final String? trailingText;
  final VoidCallback? onTrailingTap;
  final List<String> tabs;
  final int? selectedIndex;
  final ValueChanged<int?> onSelected;
  final bool allowClearOnReselect;

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    final typography = ZTypography.of(context);

    final activeColor = colors.brightness == Brightness.dark
        ? const Color(0xFFB95E3A)
        : colors.action;
    final labelColor = colors.brightness == Brightness.dark
        ? const Color(0xFFF1F1F1)
        : colors.onSurface;

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
            if (trailingText != null)
              ZPressable(
                onTap: onTrailingTap,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      trailingText!,
                      style: typography.body.copyWith(color: labelColor),
                    ),
                    const SizedBox(width: 6),
                    Icon(Icons.chevron_right, size: 18, color: labelColor),
                  ],
                ),
              ),
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
                final isSelected = index == selectedIndex;
                return _Tab(
                  label: tabs[index],
                  isSelected: isSelected,
                  activeColor: activeColor,
                  inactiveColor: colors.surface,
                  activeTextColor: colors.onAction,
                  inactiveTextColor: labelColor,
                  onTap: () => allowClearOnReselect && isSelected
                      ? onSelected(null)
                      : onSelected(index),
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
