import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:show_up_animation/show_up_animation.dart';

class IntroScreen extends StatefulWidget {
  static const id = 'IntroScreen';

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int _count = 0;

  void onItemTapped() {
    setState(() {
      _count++;
    });
  }

  final List<Widget> _children = [
    Container(
      color: Colors.orange,
      child: Center(
        child: ShowUpList(
          animationDuration: Duration(milliseconds: 1500),
          delayBetween: Duration(milliseconds: 800),
          children: <Widget>[
            Text(
              'Oi',
              style: kTextStyleWhite.copyWith(
                fontSize: 65.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Eu sou a Duda!',
              style: kTextStyleWhite.copyWith(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ),
    Container(
      color: Colors.black,
      child: Center(
        child: ShowUpList(
          animationDuration: Duration(milliseconds: 1500),
          delayBetween: Duration(milliseconds: 800),
          children: <Widget>[
            Text(
              'Sou a assistente virtual do',
              style: kTextStyleWhite.copyWith(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 80.0,
              child: Image.asset(
                'lib/assets/images/bmg_logo.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    ),
    Container(
      color: Colors.orange,
      child: Center(
        child: ShowUpList(
          animationDuration: Duration(milliseconds: 1500),
          delayBetween: Duration(milliseconds: 800),
          children: <Widget>[
            Text(
              'Você está a poucos passos de mudar a sua vida, tendo controle total sobre o seu dinheiro.',
              style: kTextStyleWhite.copyWith(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
    Container(
      color: Colors.orange,
      child: Center(
        child: ShowUpList(
          animationDuration: Duration(milliseconds: 1500),
          delayBetween: Duration(milliseconds: 800),
          children: <Widget>[
            Text(
              'E eu vou te ajudar em tudo!',
              style: kTextStyleWhite.copyWith(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
    Container(
      color: Colors.orange,
      child: Center(
        child: ShowUpList(
          animationDuration: Duration(milliseconds: 1500),
          delayBetween: Duration(milliseconds: 800),
          children: <Widget>[
            Text(
              'Vamos começar?',
              style: kTextStyleWhite.copyWith(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          onItemTapped();
        },
        child: _children[_count],
      ),
    );
  }
}
