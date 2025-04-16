import 'package:flutter/material.dart';

class PasswordConfig {
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final InputDecoration? Function(ValueNotifier<bool> isObscure)? decoration;

  const PasswordConfig({
    this.onTap,
    this.onChanged,
    this.decoration,
  });

  PasswordConfig copyWith({
    Function()? onTap,
    Function(String)? onChanged,
    InputDecoration? Function(ValueNotifier<bool> isObscure)? decoration
  }){
    return PasswordConfig(
      onTap: onTap ?? this.onTap,
      onChanged: onChanged ?? this.onChanged,
      decoration: decoration ?? this.decoration
    );
  }
}
