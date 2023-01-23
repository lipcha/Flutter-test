import 'package:flutter/material.dart';
import 'package:test_app/pages/routes.dart';
import 'package:test_app/resources/app_colors.dart';
import 'package:test_app/resources/app_strings.dart';

import 'pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      onGenerateRoute: Routes.generateRoutes,
      theme: ThemeData(
        primarySwatch: AppColors.mainColor,
      ),
      initialRoute: Routes.home,
    );
  }
}
