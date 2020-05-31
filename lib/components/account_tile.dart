import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:hack_bmg_flutter/screens/bmg_account_screen.dart';

class AccountTile extends StatelessWidget {
  final bool isBMG;
  final String name;
  final Color color;
  final double value;

  AccountTile({this.isBMG, this.name, this.color, this.value});

  final FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: 0);

  @override
  Widget build(BuildContext context) {
    return isBMG
        ? BMGTile(
            fmf: fmf,
            value: value,
          )
        : NormalTile(color: color, name: name, fmf: fmf, value: value);
  }
}

class BMGTile extends StatelessWidget {
  BMGTile({
    this.fmf,
    this.value,
  });

  final FlutterMoneyFormatter fmf;
  final double value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          BMGAccountScreen.id,
          arguments: value,
        );
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          image: DecorationImage(
            image: AssetImage('lib/assets/images/b_bmg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 20,
                  child: Image.asset(
                    'lib/assets/images/logo_white.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Icon(
                  Icons.sync,
                  size: 25.0,
                  color: Color(0xFFFFCF24),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.remove_red_eye,
                  size: 25.0,
                  color: Colors.white,
                ),
                Text(
                  'R\$${fmf.copyWith(amount: value).output.nonSymbol}',
                  style: kTextStyle.copyWith(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NormalTile extends StatelessWidget {
  NormalTile({
    this.color,
    this.name,
    this.fmf,
    this.value,
  });

  final Color color;
  final String name;
  final FlutterMoneyFormatter fmf;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: kTextStyle.copyWith(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.remove_red_eye,
                size: 25.0,
                color: Colors.white,
              ),
              Text(
                'R\$${fmf.copyWith(amount: value).output.nonSymbol}',
                style: kTextStyle.copyWith(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
