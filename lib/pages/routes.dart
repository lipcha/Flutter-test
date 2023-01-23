import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/home_screen.dart';
import 'package:test_app/pages/hw1/home_work_1_screen.dart';

class Routes {
  static const String home = "home";
  static const String homeWork1 = "home_work_1";

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case homeWork1:
        return CupertinoPageRoute(
            builder: (_) => HomeWork1Screen(settings.arguments as String));
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
