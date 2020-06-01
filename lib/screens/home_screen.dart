import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/accounts_list.dart';
import 'package:hack_bmg_flutter/components/objectives_list.dart';
import 'package:hack_bmg_flutter/components/rounded_button.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:hack_bmg_flutter/components/summary_card.dart';
import 'package:hack_bmg_flutter/screens/chat_screen.dart';
import 'package:hack_bmg_flutter/screens/learn_screen.dart';
import 'package:hack_bmg_flutter/components/message_bar.dart';
import 'package:hack_bmg_flutter/components/navigation_bar.dart';
import 'package:hack_bmg_flutter/screens/objectives_screen.dart';
import 'package:hack_bmg_flutter/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({this.userName});

  final String userName;

  static const id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> _children = [
    HomePage(),
    LearnScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: _selectedIndex == 2
          ? MessageBar(
              selectedIndex: _selectedIndex,
              onItemTapped: onItemTapped,
            )
          : NavigationBar(
              selectedIndex: _selectedIndex,
              onItemTapped: onItemTapped,
            ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Container(
            color: Colors.orange,
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 80,
                  child: Image.asset(
                    'lib/assets/images/logo_white.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                Text(
                  'Olá,\nMaria!',
                  style: kTextStyleWhite.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 50.0,
                    height: 1,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Bem-vindo de volta ao Simplifica_BMG! Acompanhe seu progresso em relação aos seus objetivos.',
                  style: kTextStyleWhite.copyWith(
                    fontSize: 25.0,
                    height: 1,
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Container(
            padding: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
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
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  child: Column(
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
                      Container(
                        height: 260,
                        width: double.infinity,
                        child: ObjectivesList(),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      RoundedButtom(
                        color: Colors.orange,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Ver mais',
                              style: kTextStyleWhite.copyWith(fontSize: 20.0),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.add,
                              size: 30.0,
                              color: Colors.white,
                            )
                          ],
                        ),
                        onPress: () {
                          Navigator.pushNamed(context, ObjectivesScreen.id);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Contas',
                        style: kTextStyle.copyWith(
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 500,
                        width: double.infinity,
                        child: AccountList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
