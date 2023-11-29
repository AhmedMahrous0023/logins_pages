import 'package:flutter/material.dart';
import 'package:login_pages/screens/find_your_account_screen.dart';
import 'package:login_pages/screens/login_screen.dart';
import 'package:login_pages/screens/login_with_number_screen.dart';
import 'package:login_pages/screens/sign_in_screen.dart';
import 'package:login_pages/screens/sign_up_screen.dart';
import 'package:login_pages/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FindYourAccountScreen(),
    );
  }
}
