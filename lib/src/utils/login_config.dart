import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'utils.dart';

class LoginConfig {
  final Widget? logo;
  final String? title;
  final Widget? header;
  final String? subtitle;
  final Widget? buttonText;
  final TitleWidget? titleWidget;
  final FormMessages messages;
  final TextStyle? buttonTextStyle;
  final UserTextFieldConfig textFiledConfig;
  final PasswordConfig passwordConfig;

  LoginConfig({
    this.logo,
    this.title,
    this.header,
    this.subtitle,
    this.buttonText,
    this.titleWidget,
    this.buttonTextStyle,
    this.messages = const FormMessages(),
    this.textFiledConfig = const UserTextFieldConfig(),
    this.passwordConfig = const PasswordConfig(),
  });

  LoginConfig copyWith({
    Widget? logo,
    String? title,
    Widget? header,
    String? subtitle,
    Widget? buttonText,
    TitleWidget? titleWidget,
    TextStyle? buttonTextStyle,
    UserTextFieldConfig? textFiledConfig,
    PasswordConfig? passwordConfig,
  }) {
    return LoginConfig(
      logo: logo ?? this.logo,
      title: title ?? this.title,
      header: header ?? this.header,
      subtitle: subtitle ?? this.subtitle,
      buttonText: buttonText ?? this.buttonText,
      titleWidget: titleWidget ?? this.titleWidget,
      passwordConfig: passwordConfig ?? this.passwordConfig,
      buttonTextStyle: buttonTextStyle ?? this.buttonTextStyle,
      textFiledConfig: textFiledConfig ?? this.textFiledConfig,
    );
  }
}
