import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserTextFieldConfig {
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final InputBorder? border;
  final String? Function(String?)? validator;

  const UserTextFieldConfig({
    this.validator,
    this.onChanged,
    this.border,
    this.inputFormatters,
  });

  UserTextFieldConfig copyWith({
    InputBorder? border,
    List<TextInputFormatter>? inputFormatters,
    Function(String)? onChanged,
    String? Function(String?)? validator
  }) {
    return UserTextFieldConfig(
      border: border ?? this.border,
      onChanged: onChanged ?? this.onChanged,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      validator: validator ?? this.validator
    );
  }
}
