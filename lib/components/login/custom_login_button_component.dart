import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({Key? key, required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                loginController.auth().then((result) {
                  if (result) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text('Usuário ou senha incorretos'),
                      duration: const Duration(seconds: 3),
                    ));
                  }
                });
              },
            ),
    );
  }
}
