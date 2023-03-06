import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/home_screen.dart';
import 'package:test_app/pages/hw1/home_work_1_screen.dart';
import 'package:test_app/pages/hw3/counter_screen.dart';

import 'hw2/inherited_widget_screen.dart';

class Routes {
  static const String home = "home";
  static const String inheritedWidget = "inheritedWidget";
  static const String block = "block";

  static const String screenA = "screen_A";
  static const String screenB = "screen_B";
  static const String screenC = "screen_C";
  static const String screenD = "screen_D";

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case screenA:
      case screenB:
      case screenC:
      case screenD:
        return CupertinoPageRoute(
            builder: (_) => HomeWork1Screen(settings.name as String),
            settings: settings);
      case inheritedWidget:
        return MaterialPageRoute(
            builder: (_) => const InheritedWidgetScreen(), settings: settings);
      case block:
        return MaterialPageRoute(
            builder: (_) => const CounterScreen(), settings: settings);
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
