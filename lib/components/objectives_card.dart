import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';

class ObjectivesCard extends StatelessWidget {
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
              Icons.directions_car,
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
                      'Novo Carro',
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
                      'R\$30.900,00',
                      style: kTextStyle.copyWith(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
