import 'package:flutter/foundation.dart';
import 'package:hack_bmg_flutter/models/account.dart';
import 'package:hack_bmg_flutter/models/objective.dart';
import 'package:flutter/material.dart';
import 'dart:collection';

class DataProvider extends ChangeNotifier {
  List<Objective> _objectives = [
    Objective(
      icon: Icons.directions_car,
      label: 'Novo Carro',
      value: 30900.00,
      color: Color(0xFF3C5C83),
      percent: 0.5,
    ),
    Objective(
      icon: Icons.home,
      label: 'Casa própria',
      value: 150500.00,
      color: Color(0xFFFF6060),
      percent: 0.5,
    ),
    Objective(
      icon: Icons.work,
      label: 'Viagem ao Peru',
      value: 25000.00,
      color: Color(0xFF30A8FF),
      percent: 0.5,
    ),
  ];

  List<Account> _accounts = [
    Account(
      value: 1500.00,
      isBMG: true,
    ),
    Account(
      color: Color(0xFF83673C),
      name: 'Carteira',
      value: 200.00,
    ),
    Account(
      color: Color(0xFF683C83),
      name: 'Outro banco',
      value: 100.00,
    ),
  ];

  UnmodifiableListView<Objective> get objectives {
    return UnmodifiableListView(_objectives);
  }

  UnmodifiableListView<Account> get accounts {
    return UnmodifiableListView(_accounts);
  }

  void addObjective({IconData icon, String label, double value, Color color}) {
    final objective = Objective(
      icon: icon,
      label: label,
      value: value,
      color: color,
      percent: 0,
    );
    _objectives.add(objective);
    notifyListeners();
  }
}
