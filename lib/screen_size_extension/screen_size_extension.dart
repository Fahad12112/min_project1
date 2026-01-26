
import 'package:flutter/material.dart';

extension ScreenSizeExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  Size get screenSize => MediaQuery.of(this).size;

  double widthPercent(double percent) => screenWidth * (percent / 100);

  double heightPercent(double percent) => screenHeight * (percent / 100);

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get isPortrait => orientation == Orientation.portrait;

  bool get isLandscape => orientation == Orientation.landscape;
}