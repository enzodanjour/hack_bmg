import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({this.selectedIndex, this.onItemTapped});

  final int selectedIndex;
  final Function onItemTapped;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15,
            spreadRadius: 10,
          ),
        ],
      ),
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
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
