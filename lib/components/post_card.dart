import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';

class PostCard extends StatelessWidget {
  double _widthCard = double.infinity;
  final String date;
  final String title;
  final String description;
  final Function onPress;
  final ImageProvider image;

  PostCard({this.date, this.title, this.description, this.onPress, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          date,
          style: kTextStyleWhite.copyWith(
            fontSize: 40.0,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          height: 220,
          width: _widthCard,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
        ),
        Container(
          height: 380,
          padding: EdgeInsets.all(30.0),
          width: _widthCard,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: kTextStyle.copyWith(
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                description,
                style: kTextStyle.copyWith(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                child: FlatButton(
                  onPressed: onPress,
                  color: Colors.orange,
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                  child: Text(
                    'Continuar lendo',
                    style: kTextStyleWhite.copyWith(
                      fontSize: 25.0,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
