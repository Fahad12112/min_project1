
import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  Future<T?> pushScreen<T>(Widget screen) {
    return Navigator.push<T>(
      this,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  void popScreen<T>([T? result]) {
    Navigator.pop(this, result);
  }

  Future<T?> pushReplacementScreen<T>(Widget screen) {
    return Navigator.pushReplacement<T, dynamic>(
      this,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  bool canPopScreen() {
    return Navigator.canPop(this);
  }
}