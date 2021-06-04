import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'settings.bloc.dart';
import 'settings.event.dart';
import 'settings.state.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (_, state) => WillPopScope(
        onWillPop: () => Future.value(!state.isCurrentLoading),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Settings'),
          ),
          body: Center(
            child: Column(
              children: [
                const Text('Name'),
                TextFormField(
                  enabled: !state.isCurrentLoading,
                  initialValue: state.name,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => context.read<SettingsBloc>().add(
                        NameChanged(name: value),
                      ),
                ),
                const Text('Account number'),
                TextFormField(
                  enabled: !state.isCurrentLoading,
                  initialValue: state.accountNumber,
                  keyboardType: TextInputType.numberWithOptions(),
                  onChanged: (value) => context.read<SettingsBloc>().add(
                        AccountNumberChanged(accountNumber: value),
                      ),
                ),
                const Text('Account balance'),
                TextFormField(
                  enabled: !state.isCurrentLoading,
                  initialValue:
                      state.balance == 0 ? '' : state.balance.toString(),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => context.read<SettingsBloc>().add(
                        BalanceChanged(balance: value),
                      ),
                ),
                const SizedBox(height: 15),
                RaisedButton(
                  onPressed: state.isCurrentLoading
                      ? null
                      : () => context.read<SettingsBloc>().add(SaveSettings()),
                  child: const Text('Save settings'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
