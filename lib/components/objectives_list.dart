import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/objective_tile.dart';
import 'package:hack_bmg_flutter/models/data_provider.dart';
import 'package:provider/provider.dart';

class ObjectivesList extends StatefulWidget {
  @override
  _ObjectivesListState createState() => _ObjectivesListState();
}

class _ObjectivesListState extends State<ObjectivesList> {
  final _controller = ScrollController();
  final bool isFull = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, data, child) {
        return ListView.separated(
          itemBuilder: (context, index) {
            final objective = data.objectives[index];
            return ObjectiveTile(
              icon: objective.icon,
              label: objective.label,
              value: objective.value,
              percent: objective.percent,
            );
          },
          controller: _controller,
          itemCount: isFull ? data.objectives.length : 3,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
        );
      },
    );
  }
}
