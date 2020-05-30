import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/account_tile.dart';
import 'package:hack_bmg_flutter/models/data_provider.dart';
import 'package:provider/provider.dart';

class AccountList extends StatelessWidget {
  final bool isFull = false;

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
            if (index == data.accounts.length) {
              return AccountTile.addTile();
            } else {
              final account = data.accounts[index];
              return AccountTile(
                color: account.color,
                name: account.name,
                value: account.value,
                isBMG: account.isBMG,
              );
            }
          },
          itemCount: data.accounts.length + 1,
        );
      },
    );
  }
}
