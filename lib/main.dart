import 'package:flutter/material.dart';
import 'package:login_pages/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              foregroundColor: Colors.black,
              backgroundColor: Colors.blue[900])),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
