import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ObjectiveTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final double value;
  final double percent;

  ObjectiveTile({this.icon, this.label, this.value, this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFD1FFD3),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              icon,
              color: Color(0xFF417643),
              size: 50.0,
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      label,
                      style: kTextStyle.copyWith(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      'R\$$value',
                      style: kTextStyle.copyWith(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: FittedBox(
                  child: LinearPercentIndicator(
                    width: 250.0,
                    lineHeight: 10.0,
                    percent: percent,
                    backgroundColor: Color(0xFFCCCCCC),
                    progressColor: Color(0xFF417643),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
