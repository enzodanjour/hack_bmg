import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/post_card.dart';
import 'package:hack_bmg_flutter/constants.dart';

class LearnScreen extends StatefulWidget {
  @override
  _LearnScreenState createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Congue turpis et bibendum nunc nibh et ultrices pellentesque. Lorem interdum porttitor...';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 30.0,
              right: 30.0,
              top: 30.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFF89C0E),
            ),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'blog_',
                          style: kTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          child: Image.asset(
                            'lib/assets/images/logo_white.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam magna aliquam mauris nec vitae.',
                      style: kTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    PostCard(
                      date: 'Hoje',
                      title: 'Título do post',
                      description: description,
                      image: AssetImage('lib/assets/images/post_image.png'),
                      onPress: () {},
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    PostCard(
                      date: 'Ontem',
                      title: 'Título do post',
                      description: description,
                      image: AssetImage('lib/assets/images/post_image.png'),
                      onPress: () {},
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: FlatButton(
                        onPressed: () {},
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                          vertical: 13.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Ver mais publicações',
                              style: kTextStyle.copyWith(
                                color: Colors.orange,
                                fontSize: 20.0,
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              size: 25.0,
                              color: Colors.orange,
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
