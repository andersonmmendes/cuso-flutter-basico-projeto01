import 'package:flutter/cupertino.dart';

class LoginController {
  String? _login;
  String? _pass;

  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  setLogin(String value) => _login = value;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(Duration(seconds: 2));
    inLoader.value = false;
    return _login == 'admin' && _pass == '123';
  }
}
