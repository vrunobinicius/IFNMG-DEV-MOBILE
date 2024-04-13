// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = "", _password = "";

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: AlignmentDirectional.centerEnd,
                child: SizedBox(
                  height: 190,
                  width: 190,
                  child: Image.asset('assets/images/barbie-logo.png'),
                ),
              ),
              TextField(
                onChanged: (text) {
                  _email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-MAIL",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (text) {
                  _password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "PASSWORD",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_email == "123" && _password == "123") {
                    Navigator.of(context).pushReplacementNamed("/home");
                  } else {}
                },
                child: Text("ENTRAR"),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/barbie-background.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Container(color: Colors.black.withOpacity(0.3)),
          _body(),
        ],
      ),
    );
  }
}
