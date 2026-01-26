// lib/extensions/navigation_extension.dart

import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  // Push to a new screen
  Future<T?> pushScreen<T>(Widget screen) {
    return Navigator.push<T>(
      this,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  // Pop current screen
  void popScreen<T>([T? result]) {
    Navigator.pop(this, result);
  }

  // Push and remove previous screen
  Future<T?> pushReplacementScreen<T>(Widget screen) {
    return Navigator.pushReplacement<T, dynamic>(
      this,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  // Check if can pop
  bool canPopScreen() {
    return Navigator.canPop(this);
  }
}