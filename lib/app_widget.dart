import 'package:flutter/material.dart';
import 'package:project/app_controller.dart';
import 'package:project/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              appBarTheme: const AppBarTheme(color: Colors.pinkAccent),
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light),
          home: const LoginPage(),
        );
      },
    );
  }
}
