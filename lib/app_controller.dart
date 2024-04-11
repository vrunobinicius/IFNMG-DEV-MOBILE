import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  bool isDartTheme = false;

  static AppController instance = AppController();

  changeTheme() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}
