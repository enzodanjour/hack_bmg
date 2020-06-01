import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/screens/account_screen.dart';
import 'package:hack_bmg_flutter/screens/bmg_account_screen.dart';
import 'package:hack_bmg_flutter/screens/intro_screen.dart';
import 'package:hack_bmg_flutter/screens/login_screen.dart';
import 'package:hack_bmg_flutter/screens/objectives_screen.dart';
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
        initialRoute: RegisterScreen.id,
        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegisterScreen.id: (context) => RegisterScreen(),
          ObjectivesScreen.id: (context) => ObjectivesScreen(),
          BMGAccountScreen.id: (context) => BMGAccountScreen(),
          AccountScreen.id: (context) => AccountScreen(),
          IntroScreen.id: (context) => IntroScreen(),
        },
      ),
    );
  }
}
