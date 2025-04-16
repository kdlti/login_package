library login_package;

import 'package:flutter/material.dart';
import 'package:login_package/src/login_presenter.dart';
import 'package:provider/provider.dart';
import 'data/login_data.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  final LoginPresenter? presenter;
  final LoginConfig loginConfig;
  final PageConfig pageConfig;
  final TextEditingController textController;
  final TextEditingController passwordController;
  final FormMessages formMessages;

  const LoginScreen({
    super.key,
    this.pageConfig = const PageConfig(),
    this.presenter,
    required this.loginConfig,
    required this.textController,
    required this.passwordController,
    this.formMessages = const FormMessages(),
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final textConfig = widget.loginConfig.textFiledConfig;
    final passConfig = widget.loginConfig.passwordConfig;

    void onLoginFunction() async {
      // print(widget.textController.text);
      // print(widget.passwordController.text);
      final login = LoginData(
        user: widget.textController.text,
        pass: widget.passwordController.text,
      );

      print("LoginData: ${login.user}, ${login.pass}");
    }

    return ListenableProvider(
      create: (_) => widget.presenter,
      child: PageWidget(
        config: widget.pageConfig,
        builder: (context, constraints) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.loginConfig.header ??
                widget.loginConfig.titleWidget ??
            TitleWidget(
                  title: widget.loginConfig.title,
                  subtitle: widget.loginConfig.subtitle,
                  child: widget.loginConfig.logo,
                ),
            UserTextField(
              config: textConfig,
              controller: widget.textController,
              formMessages: widget.loginConfig.messages,
            ),
            const SizedBox(height: 20),
            PasswordTextField(
              config: passConfig,
              controller: widget.passwordController,
              formMessages: widget.loginConfig.messages,
            ),
            const SizedBox(height: 40),
            SignInButton(
              constraints: constraints,
              onPressed: onLoginFunction,
              config: widget.loginConfig,
              formMessages: widget.loginConfig.messages,
            )
          ],
        ),
      ),
    );
  }
}
