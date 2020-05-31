import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hack_bmg_flutter/components/rounded_button.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class CustomDialog extends StatelessWidget {
  final String text;

  CustomDialog({this.text});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      elevation: 0.0,
      child: dialogContent(context, text),
    );
  }
}

dialogContent(BuildContext context, String text) {
  FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: 0);

  return SingleChildScrollView(
    child: Container(
      height: 500,
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.clear,
              size: 30.0,
              color: Color(0xFF888888),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            text,
            style: kTextStyle.copyWith(
              color: Colors.orange,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              hintText: 'R\$',
              hintStyle: kTextStyle.copyWith(
                color: Color(0xFF888888),
                fontWeight: FontWeight.w700,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Categoria',
            style: kTextStyle.copyWith(
              color: Colors.orange,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              hintText: 'R\$',
              hintStyle: kTextStyle.copyWith(
                color: Color(0xFF888888),
                fontWeight: FontWeight.w700,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Data',
            style: kTextStyle.copyWith(
              color: Colors.orange,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              hintText: 'R\$',
              hintStyle: kTextStyle.copyWith(
                color: Color(0xFF888888),
                fontWeight: FontWeight.w700,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          RoundedButtom(
            color: Colors.orange,
            child: Text(
              'Adicionar',
              style: kTextStyleWhite.copyWith(fontSize: 20.0),
            ),
            onPress: () {},
          )
        ],
      ),
    ),
  );
}
