import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[],
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
