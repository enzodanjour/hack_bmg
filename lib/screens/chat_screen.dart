import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/rounded_button.dart';
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
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RoundedButtom(
                color: Colors.orange,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Eu quero pagar um boleto',
                    style: kTextStyleWhite.copyWith(fontSize: 16.0),
                  ),
                ),
                onPress: () {},
              ),
              SizedBox(
                height: 10.0,
              ),
              RoundedButtom(
                color: Colors.orange,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Quero criar um novo objetivo',
                    style: kTextStyleWhite.copyWith(fontSize: 16.0),
                  ),
                ),
                onPress: () {},
              ),
              SizedBox(
                height: 10.0,
              ),
              RoundedButtom(
                color: Colors.orange,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Quero alterar um objetivo meu',
                    style: kTextStyleWhite.copyWith(fontSize: 16.0),
                  ),
                ),
                onPress: () {},
              ),
              SizedBox(
                height: 10.0,
              ),
              RoundedButtom(
                color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Ver a lista completa do que pedir à Duda',
                    style: kTextStyleWhite.copyWith(fontSize: 16.0),
                  ),
                ),
                onPress: () {},
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
