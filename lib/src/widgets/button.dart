import 'package:flutter/material.dart';

import '../utils/utils.dart';

class SignInButton extends StatelessWidget {
  final LoginConfig config;
  final BoxConstraints constraints;
  final Function()? onPressed;
  final FormMessages formMessages;

  const SignInButton({
    required this.config,
    required this.constraints,
    required this.onPressed,
    required this.formMessages,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        minimumSize: Size(
          constraints.maxWidth >= 600 ? 300 : constraints.maxWidth * 0.5,
          55,
        ),
        textStyle: config.buttonTextStyle ?? textTheme.titleMedium,
      ),
      onPressed: onPressed,
      child: Text(formMessages.button),
    );
  }
}
