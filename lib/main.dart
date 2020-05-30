import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/screens/login_screen.dart';
import 'package:hack_bmg_flutter/screens/splash_screen.dart';
import 'package:hack_bmg_flutter/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
