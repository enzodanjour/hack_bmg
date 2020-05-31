import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:hack_bmg_flutter/constants.dart';

class ProfileScreen extends StatefulWidget {
  static const id = 'ProfileScreen';
  

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool avancado = true;
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
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Tipo de experiência', 
                style: kTextStyle.copyWith(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400
                )
              ),
            ),
            Container(
              height: 10,
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
                  value: avancado, 
                  onChanged: (value){
                    setState(() {
                      avancado = value;
                    });
                  },
                  activeTrackColor: Colors.green,
                  activeColor:Colors.green,
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
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16.0),
              child: avancado ? Text(
                'No modo avançado você poupa e também investe. Esse modo é indicado para quem deseja aprender a investir o seu dinheiro e aumentar o patrimônio. Invista com baixo ou alto risco.', 
                style: kTextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w200
                )
              ) : Text(
                'No modo simples você apenas poupa o seu dinheiro. Esse modo é indicado para quem deseja aprender a gerir melhor o seu dinheiro, sem nenhum risco.', 
                style: kTextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w200
                )
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Distribuição do seu dinheiro', 
                style: kTextStyle.copyWith(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400
                )
              ),
            ),
          ], 
        ),
      ),
    );
  }
}