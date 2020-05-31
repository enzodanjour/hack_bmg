import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:hack_bmg_flutter/components/rounded_button.dart';
import 'package:hack_bmg_flutter/constants.dart';

class BMGAccountScreen extends StatelessWidget {
  static const id = 'BMGAccountScreen';

  BMGAccountScreen({this.value});

  final double value;

  final FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            color: Colors.orange,
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 50.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Image.asset('lib/assets/images/logo_white.png'),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.orange,
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
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.sync,
                        size: 30.0,
                        color: Color(0xFFFFCF24),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            'Sua conta BMG é sincronizada automaticamente.',
                            style: kTextStyle.copyWith(
                              color: Colors.orange,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Saldo atual',
                    style: kTextStyle.copyWith(
                      color: Colors.orange,
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
                        color: Color(0xFFFFCF24),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'R\$${fmf.copyWith(amount: value).output.nonSymbol}',
                        style: kTextStyle.copyWith(
                          color: Colors.orange,
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
                        child: RoundedButtom(
                          color: Colors.grey,
                          child: Text(
                            'Registrar entrada',
                            textAlign: TextAlign.center,
                            style: kTextStyleWhite.copyWith(
                              fontSize: 22.0,
                            ),
                          ),
                          onPress: () {
                            showDialog(
                              context: context,
                              child: AlertSync(),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: RoundedButtom(
                          color: Colors.grey,
                          child: Text(
                            'Registrar saída',
                            textAlign: TextAlign.center,
                            style: kTextStyleWhite.copyWith(
                              fontSize: 22.0,
                            ),
                          ),
                          onPress: () {
                            showDialog(
                              context: context,
                              child: AlertSync(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Column(
                    children: <Widget>[
                      RoundedButtom(
                        color: Colors.orange,
                        child: Text(
                          'Movimentação da conta',
                          style: kTextStyleWhite.copyWith(fontSize: 20.0),
                        ),
                        onPress: () {},
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RoundedButtom(
                        color: Colors.orange,
                        child: Text(
                          'Pagar boleto',
                          style: kTextStyleWhite.copyWith(fontSize: 20.0),
                        ),
                        onPress: () {},
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RoundedButtom(
                        color: Colors.orange,
                        child: Text(
                          'Transferir',
                          style: kTextStyleWhite.copyWith(fontSize: 20.0),
                        ),
                        onPress: () {},
                      ),
                    ],
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

class AlertSync extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Container(
        height: 250,
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Text(
              'Você não precisa se preocupar em registrar as movimentações na sua conta BMG. Fazemos isso para você, automaticamente.',
              style: kTextStyle.copyWith(
                color: Colors.orange,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Demais!',
              style: kTextStyle.copyWith(
                color: Colors.orange,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
