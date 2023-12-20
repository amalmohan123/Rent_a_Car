import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool isSignIn = true;
  bool isObscure = true;

  void signIn() {
    isSignIn = !isSignIn;
    notifyListeners();
  }
}
