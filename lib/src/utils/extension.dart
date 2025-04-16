import 'package:flutter/material.dart';

extension StringExtinction on String? {
  bool get isNotEmptyOrNull {
    final value = this;
    return value != null && value.isNotEmpty;
  }
}

extension WidgetExtinction on Widget? {
  Widget get orShrink => this ?? const SizedBox.shrink();

  bool get isNotNull => this != null;

  bool get isNull => this == null;
}
