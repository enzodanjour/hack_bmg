import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:hack_bmg_flutter/constants.dart';

class ProfileScreen extends StatefulWidget {
  static const id = 'ProfileScreen';
  

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors:[Colors.redAccent,Colors.orangeAccent]
                )
              ),
              child: Container(
                width: double.infinity,
                height: 150.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: GFAvatar(
                          backgroundImage: NetworkImage('https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg'),
                          shape: GFAvatarShape.standard,                      
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Maria Conceição Leopoldino', 
                style: kTextStyle.copyWith(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w400
                )
              )
            ),
            Container(
              height: 25,
            ),
             Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Tipo de experiência', 
                style: kTextStyle.copyWith(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400
                )
              ),
            ),
            Container(
              height: 25,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Simples', 
                  style: kTextStyle.copyWith(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400
                  )
                ),
                Switch(
                  value: isSwitched, 
                  onChanged: (value){
                    setState(() {
                      isSwitched = value;
                      print('isSwitched');
                    });
                  },
                  activeTrackColor: Colors.grey,
                  activeColor:Colors.grey,
                ),
                Text(
                  'Avançada', 
                  style: kTextStyle.copyWith(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}