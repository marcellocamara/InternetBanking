import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../settings/settings.bloc.dart';
import '../settings/settings.state.dart';

/// Created by marcellocamara@id.uff.br on 04/06/2021.

class Bank2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank 2'),
      ),
      body: Center(
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (_, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Name: ${state.name}'),
                Text('Account number: ${state.accountNumber}'),
                Text('Balance: R\$ ${state.balance}'),
              ],
            );
          },
        ),
      ),
    );
  }
}
