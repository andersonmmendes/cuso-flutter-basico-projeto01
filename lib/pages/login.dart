import 'package:flutter/material.dart';
import 'package:projeto01/components/login/custom_login_button_component.dart';
import 'package:projeto01/controllers/login_controller.dart';
import 'package:projeto01/widgets/custom_text_field_widget.dart';

class Login extends StatelessWidget {
  LoginController _controller = LoginController();

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.people,
              size: 98,
            ),
            CustomTextFieldWidget(
              onChanged: _controller.setLogin,
              label: 'Login',
            ),
            CustomTextFieldWidget(
              onChanged: _controller.setPass,
              label: 'Senha',
              obscureText: true,
            ),
            const SizedBox(height: 15),
            CustomLoginButtonComponent(
              loginController: _controller,
            )
          ],
        ),
      ),
    );
  }
}
