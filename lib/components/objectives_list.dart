import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/objective_tile.dart';
import 'package:hack_bmg_flutter/models/objective_data.dart';
import 'package:provider/provider.dart';

class ObjectivesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ObjectiveData>(
      builder: (context, data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final objective = data.objectives[index];
            return ObjectiveTile(
              icon: objective.icon,
              label: objective.label,
              value: objective.value,
              percent: objective.percent,
            );
          },
          itemCount: data.objectives.length,
        );
      },
    );
  }
}
