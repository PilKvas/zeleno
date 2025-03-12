import 'package:flutter/material.dart';

extension BrighntessReverseX on Brightness {
  Brightness reversed() =>
      this == Brightness.dark ? Brightness.light : Brightness.dark;
}
