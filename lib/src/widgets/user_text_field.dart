import 'package:flutter/material.dart';
import '../utils/utils.dart';

class UserTextField extends StatelessWidget {
  final UserTextFieldConfig config;
  final TextEditingController controller;
  final FormMessages formMessages;

  const UserTextField({
    super.key,
    required this.config,
    required this.controller,
    required this.formMessages,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: config.inputFormatters ?? const [],
      decoration: InputDecoration(
          hintText: formMessages.userFieldHint,
          labelText: formMessages.userField,
          prefixIconConstraints: BoxConstraints.tight(const Size(10, 10)),
          border: config.border ??
              const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              )),
      onChanged: (value) {
        config.onChanged!(value);
      },
      validator: (value) {
        config.validator;
      },
    );
  }
}
