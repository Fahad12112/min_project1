// lib/constants/app_spacing.dart

import 'package:flutter/material.dart';

class AppSpacing {
  // Private constructor to prevent instantiation
  AppSpacing._();

  // Spacing values
  static const double space5 = 5.0;
  static const double space10 = 10.0;
  static const double space15 = 15.0;
  static const double space20 = 20.0;
  static const double space30 = 30.0;

  // SizedBox widgets for vertical spacing
  static const Widget vertical5 = SizedBox(height: space5);
  static const Widget vertical10 = SizedBox(height: space10);
  static const Widget vertical15 = SizedBox(height: space15);
  static const Widget vertical20 = SizedBox(height: space20);
  static const Widget vertical30 = SizedBox(height: space30);

  // SizedBox widgets for horizontal spacing
  static const Widget horizontal5 = SizedBox(width: space5);
  static const Widget horizontal10 = SizedBox(width: space10);
  static const Widget horizontal15 = SizedBox(width: space15);

  // Padding values
  static const EdgeInsets paddingAll10 = EdgeInsets.all(space10);
  static const EdgeInsets paddingAll15 = EdgeInsets.all(space15);
  static const EdgeInsets paddingHorizontal10 = EdgeInsets.symmetric(horizontal: space10);
  static const EdgeInsets paddingHorizontal15 = EdgeInsets.symmetric(horizontal: space15);
}