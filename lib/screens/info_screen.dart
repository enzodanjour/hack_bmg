import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:hack_bmg_flutter/constants.dart';

class InfoScreen extends StatelessWidget {
  final double value;
  final IconData icon;
  final String name;
  final double percent;

  InfoScreen({this.value, this.icon, this.name, this.percent});

  final FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.all(20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 50.0,
            color: Color(0xFF417643),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            name,
            style: kTextStyle.copyWith(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Você está indo bem! Conseguiu acumular R\$${fmf.copyWith(amount: value * percent).output.nonSymbol} até agora. Seu objetivo é de R\$${fmf.copyWith(amount: value).output.nonSymbol}, faltam R\$${fmf.copyWith(amount: value - (value * percent)).output.nonSymbol} para atingir.',
              style: kTextStyle.copyWith(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
