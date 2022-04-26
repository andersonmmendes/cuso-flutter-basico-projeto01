import 'package:flutter/cupertino.dart';
import 'package:projeto01/services/prefs_service.dart';

class LoginController {
  String? _login;
  String? _pass;

  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  setLogin(String value) => _login = value;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inLoader.value = false;
    if (_login == 'admin' && _pass == '123') {
      PrefsService.save(_login!);
      return true;
    }

    return false;
  }
}
