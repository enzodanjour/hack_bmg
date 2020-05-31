import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/objectives_list.dart';
import 'package:hack_bmg_flutter/constants.dart';

class ObjectivesScreen extends StatelessWidget {
  static const id = 'ObjectivesScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
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
                        Image.asset('lib/assets/images/logo_white.png'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Seus objetivos',
                      textAlign: TextAlign.left,
                      style: kTextStyleWhite.copyWith(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: ObjectivesList(
                          isFull: true,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        color: Colors.grey,
                        padding: EdgeInsets.all(20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Adicionar objetivo',
                              style: kTextStyleWhite.copyWith(
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
