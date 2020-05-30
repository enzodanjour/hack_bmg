import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Image.asset('lib/assets/images/duda.png'),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 300,
                child: Text(
                  'Precisando de ajuda, Maria?',
                  style: kTextStyle.copyWith(
                    color: Colors.orange,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Algumas sugestões do que você me pedir:',
                style: kTextStyle.copyWith(
                  color: Colors.orange,
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
