import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BARBIE APP"),
        shadowColor: Colors.pink,
        elevation: 35,
        centerTitle: true,
        foregroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                AppController.instance.changeTheme();
              },
              icon: (AppController.instance.isDartTheme
                  ? Icon(Icons.dark_mode_sharp)
                  : Icon(Icons.dark_mode_outlined))),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contador",
              style: TextStyle(fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(
                      255,
                      50 + Random().nextInt(300),
                      50 + Random().nextInt(300),
                      50 + Random().nextInt(300),
                    ),
                  ),
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: Text(
                    "$counter",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pinkAccent,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(color: Colors.pink),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
