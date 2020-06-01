import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/models/data_provider.dart';
import 'package:provider/provider.dart';

class GoalsList extends StatelessWidget {
  const GoalsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, data, index) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 30.0,
            mainAxisSpacing: 30.0,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final account = data.accounts[index];
            return null;
          },
          itemCount: data.accounts.length,
        );
      },
    );
  }
}