import 'package:flutter/material.dart';
import 'package:grocery_app/screens/auth/login_screen.dart';
import 'package:grocery_app/screens/auth/register.dart';
import 'package:grocery_app/screens/cart/cart_screen.dart';
import 'package:grocery_app/screens/dashboard/web/dashboard_web.dart';
import 'package:grocery_app/screens/dashboard/web/pages/profile.dart';
import 'package:grocery_app/screens/filter_screen.dart';
import 'package:grocery_app/screens/home_page.dart';
import 'package:grocery_app/screens/splash_screen.dart';
import 'package:grocery_app/styles/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const LoginScreen(),
    );
  }
}
