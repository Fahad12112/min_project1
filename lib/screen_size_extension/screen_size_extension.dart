// lib/extensions/screen_size_extension.dart

import 'package:flutter/material.dart';

extension ScreenSizeExtension on BuildContext {
  // Get screen width
  double get screenWidth => MediaQuery.of(this).size.width;

  // Get screen height
  double get screenHeight => MediaQuery.of(this).size.height;

  // Get screen size
  Size get screenSize => MediaQuery.of(this).size;

  // Calculate percentage of screen width
  double widthPercent(double percent) => screenWidth * (percent / 100);

  // Calculate percentage of screen height
  double heightPercent(double percent) => screenHeight * (percent / 100);

  // Get orientation
  Orientation get orientation => MediaQuery.of(this).orientation;

  // Check if portrait
  bool get isPortrait => orientation == Orientation.portrait;

  // Check if landscape
  bool get isLandscape => orientation == Orientation.landscape;
}