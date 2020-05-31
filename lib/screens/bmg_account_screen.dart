import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';

class BMGAccountScreen extends StatelessWidget {
  static const id = 'BMGAccountScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.orange,
              width: double.infinity,
              padding: EdgeInsets.all(40.0),
              child: Row(
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
                  SizedBox(
                    width: 80,
                  ),
                  Image.asset('lib/assets/images/logo_white.png'),
                ],
              ),
            ),
            Expanded(
              child: Container(
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
                        height: 40.0,
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
                            'R\$',
                            style: kTextStyle.copyWith(
                              color: Colors.orange,
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FlatButton(
                              padding: EdgeInsets.all(20.0),
                              color: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Registrar entrada',
                                style: kTextStyleWhite.copyWith(
                                  fontSize: 15.0,
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
                              color: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Registrar saída',
                                style: kTextStyleWhite.copyWith(
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            child: FlatButton(
                              onPressed: () {},
                              padding: EdgeInsets.all(10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: Colors.orange,
                              child: Text(
                                'Movimentação da conta',
                                style: kTextStyleWhite.copyWith(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: FlatButton(
                              onPressed: () {},
                              padding: EdgeInsets.all(10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: Colors.orange,
                              child: Text(
                                'Movimentação da conta',
                                style: kTextStyleWhite.copyWith(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: FlatButton(
                              onPressed: () {},
                              padding: EdgeInsets.all(10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: Colors.orange,
                              child: Text(
                                'Movimentação da conta',
                                style: kTextStyleWhite.copyWith(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
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
