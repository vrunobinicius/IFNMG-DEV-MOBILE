// ignore_for_file: prefer_const_constructors

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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    "https://rollingstone.uol.com.br/media/_versions/2023/05/barbie-filme-margot-robbie-2023-foto-divulgacao_widelg.jpg"),
              ),
              accountName: Text("Barbie"),
              accountEmail: Text("Barbie"),
            ),
            ListTile(
              title: Text("INÍCIO"),
              subtitle: Text("Tela de Início"),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text("SAIR"),
              subtitle: Text("Sair do usúario"),
              leading: Icon(
                Icons.logout_rounded,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/");
              },
            ),
          ],
        ),
      ),
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
      body: SizedBox(
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
