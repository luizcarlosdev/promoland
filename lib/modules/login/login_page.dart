import 'package:flutter/material.dart';

import 'package:promoland/shared/theme/app_theme.dart';
import 'package:promoland/shared/widgets/button/button.dart';
import 'package:promoland/shared/widgets/input_text/input_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 200,
            ),
            const InputText(
              label: "E-mail",
              hint: "Digite seu e-mail",
            ),
            const SizedBox(
              height: 18,
            ),
            const InputText(
              label: "Senha",
              hint: "Digite sua senha",
            ),
            const SizedBox(
              height: 14,
            ),
            const Button(
              label: "Entrar",
              type: ButtonType.fill,
            ),
            const SizedBox(
              height: 30,
            ),
            const Button(
              label: "Criar conta",
              type: ButtonType.outline,
            ),
          ],
        ),
      ),
    );
  }
}
