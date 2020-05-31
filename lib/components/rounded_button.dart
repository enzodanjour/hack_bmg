import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';

class RoundedButtom extends StatelessWidget {
  final bool isBMG;
  final Color color;
  final Function onPress;
  final Widget child;

  RoundedButtom({this.isBMG = false, this.color, this.onPress, this.child});

  final Widget textBMG = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'Transferir para conta',
        style: kTextStyleWhite.copyWith(fontSize: 20.0),
      ),
      SizedBox(
        width: 10.0,
      ),
      Container(
        height: 20,
        child: Image.asset(
          'lib/assets/images/logo_white.png',
          fit: BoxFit.contain,
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        onPressed: onPress,
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: isBMG ? Colors.orange : color,
        child: isBMG ? textBMG : child,
      ),
    );
  }
}
