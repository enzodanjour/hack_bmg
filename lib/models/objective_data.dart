import 'package:flutter/foundation.dart';
import 'package:hack_bmg_flutter/models/objective.dart';
import 'package:flutter/material.dart';
import 'dart:collection';

class ObjectiveData extends ChangeNotifier {
  List<Objective> _objectives = [];

  UnmodifiableListView<Objective> get objectives {
    return UnmodifiableListView(_objectives);
  }
}
