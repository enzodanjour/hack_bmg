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
      percent: 0.5,
    ),
    Objective(
      icon: Icons.home,
      label: 'Casa própria',
      value: 150500.00,
      percent: 0.5,
    ),
    Objective(
      icon: Icons.work,
      label: 'Viagem ao Peru',
      value: 25000.00,
      percent: 0.5,
    ),
    Objective(
      icon: Icons.work,
      label: 'Viagem ao Peru',
      value: 25000.00,
      percent: 0.5,
    ),
  ];

  List<Account> _accounts = [
    Account(
      value: 1500.00,
      isBMG: true,
    ),
    Account(
      color: Colors.brown,
      name: 'Carteira',
      value: 200.00,
    ),
    Account(
      color: Colors.purple,
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
}
