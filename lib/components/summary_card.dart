import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';

class SummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.all(20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFD1FFD3),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Container(
          width: double.infinity,
          child: Text(
            'Você está indo bem! Continue assim para se manter dentro dos seus objetivos.',
            style: kTextStyle.copyWith(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
