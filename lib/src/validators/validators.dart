import 'package:flutter/material.dart';

import '../data/validation_service.dart';

class Validators extends ChangeNotifier implements ValidationService {
  @override
  void validatePass(String value) {
    print(value);
    notifyListeners();
  }

  @override
  String? validateUser(String? value) {
    print(value);
    return value;
  }
}
