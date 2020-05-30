import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFD1FFD3),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: CircularPercentIndicator(
              radius: 110.0,
              backgroundColor: Color(0xFF417643),
              lineWidth: 10.0,
            ),
          ),
          Container(
            height: 90,
            width: 180,
            child: Text(
              'Você está indo bem! Continue assim para se manter dentro dos seus objetivos.',
              style: kTextStyle.copyWith(
                fontSize: 16.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
