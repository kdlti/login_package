import 'package:flutter/material.dart';
import 'package:login_package/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      home: LoginScreen(
        //Passar TextEditing para dentro
        passwordController: TextEditingController(),
        textController: TextEditingController(),
        loginConfig: LoginConfig(
          textFiledConfig: UserTextFieldConfig(
            onChanged: (value) => print(value),
          ),
          passwordConfig: PasswordConfig(
            onChanged: (value) => print(value),
          ),
          logo: const FlutterLogo(size: 100),
          title: 'KDL',
          subtitle: 'Efetuar Login',
        ),
        pageConfig: const PageConfig(
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 224, 224, 224),
          ],
        ),
      ),
    );
  }
}
