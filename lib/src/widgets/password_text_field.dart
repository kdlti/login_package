import 'package:flutter/material.dart';

import '../utils/utils.dart';

class PasswordTextField extends StatelessWidget {
  final PasswordConfig config;
  final FormMessages formMessages;
  final TextEditingController controller;

  const PasswordTextField({
    super.key,
    required this.config,
    required this.controller,
    required this.formMessages,
  });

  @override
  Widget build(BuildContext context) {
    final isObscure = ValueNotifier<bool>(true);
    return ValueListenableBuilder(
      valueListenable: isObscure,
      builder: (context, obscure, child) {
        return TextFormField(
          obscureText: obscure,
          controller: controller,
          onChanged: (value) {
            config.onChanged?.call(value);
          },
          onTap: config.onTap,
          decoration: config.decoration?.call(isObscure) ??
              InputDecoration(
                hintText: formMessages.passFieldHint,
                labelText: formMessages.passField,
                suffixIcon: IconButton(
                  icon: Icon(obscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: () => isObscure.value = !obscure,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
              ),
        );
      },
    );
  }
}
