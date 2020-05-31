import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/constants.dart';

class MessageBar extends StatelessWidget {
  const MessageBar({this.selectedIndex, this.onItemTapped});

  final int selectedIndex;
  final Function onItemTapped;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 10.0,
            ),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 20.0,
                      ),
                      hintText: 'Diga algo para a Duda',
                      hintStyle: kTextStyle.copyWith(
                        color: Color(0xFF888888),
                        fontWeight: FontWeight.w700,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Color(0xFFE8E8E8),
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  child: FlatButton(
                    shape: CircleBorder(),
                    color: Colors.orange,
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBar(
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
        ],
      ),
    );
  }
}
