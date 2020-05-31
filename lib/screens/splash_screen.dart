import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/screens/home_screen.dart';
import 'package:hack_bmg_flutter/screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  static const id = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    pushHome();
  }

  void pushHome() {
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.pushNamed(context, IntroScreen.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Image.asset(
          'lib/assets/images/logo_white@2x.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
