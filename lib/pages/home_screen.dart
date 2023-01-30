import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/routes.dart';

import '../resources/app_strings.dart';
import 'hw1/home_work_1_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.appName),
        ),
        // drawer: const DrawerMenu(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Routes.screenA),
                  child: const Text(AppStrings.buttonHW1)),
              ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Routes.inheritedWidget),
                  child: const Text(AppStrings.buttonHW2))
            ],
          ),
        ));
  }
}

class MenuItem {
  final IconData icon;
  final String title;

  const MenuItem(this.icon, this.title);
}
