import 'package:flutter/material.dart';

class ZDimensions extends ThemeExtension<ZDimensions> {
  static ZDimensions of(BuildContext context) =>
      Theme.of(context).extension<ZDimensions>()!;

  const ZDimensions({
    this.horizontalPadding100 = const EdgeInsets.symmetric(
      horizontal: 16,
    ),
    this.corner100 = const BorderRadius.all(
      Radius.circular(32),
    ),
    this.cornerButton = const BorderRadius.all(
      Radius.circular(16),
    ),
  });

// Insets
  final EdgeInsets horizontalPadding100;

// Radius
  static const Radius basicRadius = Radius.circular(10);
  final BorderRadius corner100;
  final BorderRadius cornerButton;

// Margins
  /// Отступ 16px
  static const double basicMargin = 16;
  /// Отступ 12px
  static const double normalMargin = 12;
  /// Отступ 8px
  static const double smallMargin = 8;
  /// Отступ 4px
  static const double tinyMargin = 8;


  @override
  ThemeExtension<ZDimensions> copyWith({
    EdgeInsets? horizontalPadding100,
    BorderRadius? borderRadius100,
  }) {
    return ZDimensions(
      horizontalPadding100: horizontalPadding100 ?? this.horizontalPadding100,
      corner100: borderRadius100 ?? corner100,
    );
  }

  @override
  ThemeExtension<ZDimensions> lerp(
      covariant ZDimensions? other,
      double t,
      ) {
    if (other == null) return this;

    return ZDimensions(
      horizontalPadding100: EdgeInsets.lerp(
        horizontalPadding100,
        other.horizontalPadding100,
        t,
      )!,
      corner100: BorderRadius.lerp(
        corner100,
        other.corner100,
        t,
      )!,
    );
  }
}