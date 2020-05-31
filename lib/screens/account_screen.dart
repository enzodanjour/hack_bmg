import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/custom_dialog.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:hack_bmg_flutter/components/rounded_button.dart';

class AccountScreen extends StatelessWidget {
  static const id = 'AccountScreen';

  AccountScreen({this.value = 0.0, this.color, this.name});

  final double value;
  final Color color;
  final String name;

  final FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: color,
              width: double.infinity,
              padding: EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 50.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    name,
                    style: kTextStyleWhite.copyWith(fontSize: 30.0),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.palette,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: color,
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Saldo atual',
                        style: kTextStyle.copyWith(
                          color: color,
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.remove_red_eye,
                            size: 20.0,
                            color: color,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'R\$${fmf.copyWith(amount: value).output.nonSymbol}',
                            style: kTextStyle.copyWith(
                              color: color,
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FlatButton(
                              padding: EdgeInsets.all(20.0),
                              color: color,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => CustomDialog(
                                    text: 'Registrar entrada',
                                  ),
                                );
                              },
                              child: Text(
                                'Registrar entrada',
                                textAlign: TextAlign.center,
                                style: kTextStyleWhite.copyWith(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: FlatButton(
                              padding: EdgeInsets.all(20.0),
                              color: color,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => CustomDialog(
                                    text: 'Registrar saída',
                                  ),
                                );
                              },
                              child: Text(
                                'Registrar saída',
                                textAlign: TextAlign.center,
                                style: kTextStyleWhite.copyWith(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Column(
                        children: <Widget>[
                          RoundedButtom(
                            child: Text(
                              'Adicionar saldo',
                              style: kTextStyleWhite.copyWith(fontSize: 20.0),
                            ),
                            color: color,
                            onPress: () {},
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          RoundedButtom(
                            child: Text('Movimentação da conta',
                                style:
                                    kTextStyleWhite.copyWith(fontSize: 20.0)),
                            color: color,
                            onPress: () {},
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          RoundedButtom(
                            isBMG: true,
                            onPress: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
