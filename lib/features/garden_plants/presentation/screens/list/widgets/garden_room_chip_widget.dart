import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/button/pressable.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

class GardenRoomChipWidget extends StatelessWidget {
  const GardenRoomChipWidget({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    return ZPressable(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? null : colorScheme.secondaryBg,
          gradient: isSelected
              ? LinearGradient(
                  colors: <Color>[
                    colorScheme.secondaryGradientColor,
                    colorScheme.mainGradientColor2,
                  ],
                )
              : null,
        ),
        child: Text(
          label,
          style: isSelected
              ? typography.headline400.copyWith(color: colorScheme.brand)
              : typography.body.copyWith(color: colorScheme.onBackground),
        ),
      ),
    );
  }
}
