import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class AccountTile extends StatelessWidget {
  final String name;
  final Color color;
  final double value;

  AccountTile({this.name, this.color, this.value});

  final FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: 0);

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
