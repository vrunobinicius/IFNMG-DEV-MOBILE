import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
        title: const Text("BARBIE APP"),
        shadowColor: Colors.pink,
        elevation: 35,
        centerTitle: true,
        foregroundColor: Colors.blue,
        actions: const [
          DarkLightModeButton(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
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
                    style: const TextStyle(
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
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pinkAccent,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomAppBar(color: Colors.pink),
    );
  }
}

class DarkLightModeButton extends StatelessWidget {
  const DarkLightModeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          AppController.instance.changeTheme();
        },
        icon: (AppController.instance.isDartTheme
            ? const Icon(Icons.dark_mode_sharp)
            : const Icon(Icons.dark_mode_outlined)));
  }
}
