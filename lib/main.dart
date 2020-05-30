import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/screens/login_screen.dart';
import 'package:hack_bmg_flutter/screens/register_screen.dart';
import 'package:hack_bmg_flutter/screens/splash_screen.dart';
import 'package:hack_bmg_flutter/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:hack_bmg_flutter/models/data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        initialRoute: SplashScreen.id,
        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegisterScreen.id: (context) => RegisterScreen(),
        },
      ),
    );
  }
}
