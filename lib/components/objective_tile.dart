import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class ObjectiveTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final double value;
  final double percent;

  ObjectiveTile({this.icon, this.label, this.value, this.percent});

  final FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Color(0xFFD1FFD3),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              icon,
              color: Color(0xFF417643),
              size: 50.0,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        label,
                        style: kTextStyle.copyWith(
                          fontSize: 16.0,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'R\$${fmf.copyWith(amount: value).output.nonSymbol}',
                          style: kTextStyle.copyWith(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(0.0),
                    width: double.infinity,
                    child: Expanded(
                      child: LinearPercentIndicator(
                        lineHeight: 10.0,
                        percent: percent,
                        backgroundColor: Color(0xFFCCCCCC),
                        progressColor: Color(0xFF417643),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
