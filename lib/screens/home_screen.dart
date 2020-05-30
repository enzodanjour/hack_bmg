import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/objective_tile.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:hack_bmg_flutter/components/summary_card.dart';
import 'package:hack_bmg_flutter/models/objective.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Objective> objectives = [
    Objective(
      icon: Icons.directions_car,
      label: 'Carro Novo',
      value: 39600.00,
      percent: 0.5,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 80,
                  child: Image.asset(
                    'lib/assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Olá,\nMaria!',
                  style: kTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 50.0,
                    height: 1,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam magna aliquam mauris nec vitae.',
                  style: kTextStyle.copyWith(
                    fontSize: 25.0,
                    height: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Seu resumo',
                  style: kTextStyle.copyWith(
                    fontSize: 40.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SummaryCard(),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Seus objetivos',
                  style: kTextStyle.copyWith(
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15,
            spreadRadius: 10,
          ),
        ]),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: kBottomThemeData.copyWith(
            color: Colors.black,
          ),
          unselectedIconTheme: kBottomThemeData.copyWith(
            color: Colors.grey,
          ),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              title: kVoidWidget,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: kVoidWidget,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              title: kVoidWidget,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: kVoidWidget,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
