import 'package:flutter/material.dart';

mixin ApplicationMeasures {
  static const double margin = 31.75;
  static const double gutter = 15.75;

  static const double horizontalPaddingValue = margin;
  static EdgeInsets get horizontalPadding => const EdgeInsets.symmetric(horizontal: horizontalPaddingValue);

  static const double verticalPaddingValue = 32;
  static EdgeInsets get verticalPadding => const EdgeInsets.symmetric(vertical: verticalPaddingValue);

  static EdgeInsets get bodyPadding => const EdgeInsets.symmetric(
        horizontal: horizontalPaddingValue,
        vertical: verticalPaddingValue,
      );
}
