import 'package:flutter/material.dart';
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
      body: Center(
        child: CustomSwitch(),
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
