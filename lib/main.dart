import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home_page.dart';
import 'package:grocery_app/screens/splash_screen.dart';
import 'package:grocery_app/styles/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const SplashScreen(),
    );
  }
}
