import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/widgets/custom_text_form_field.ui.dart';
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
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 15),
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormFieldWidget(
                    enabled: !state.isCurrentLoading,
                    initialValue: state.name,
                    hintText: 'Name',
                    labelText: 'Name',
                    keyboardType: TextInputType.text,
                    onChanged: (value) => context.read<SettingsBloc>().add(
                          NameChanged(name: value),
                        ),
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormFieldWidget(
                    enabled: !state.isCurrentLoading,
                    initialValue: state.accountNumber,
                    hintText: 'Account number',
                    labelText: 'Account number',
                    keyboardType: TextInputType.numberWithOptions(),
                    onChanged: (value) => context.read<SettingsBloc>().add(
                          AccountNumberChanged(accountNumber: value),
                        ),
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormFieldWidget(
                    enabled: !state.isCurrentLoading,
                    initialValue:
                        state.balance == 0 ? '' : state.balance.toString(),
                    hintText: 'R\$ 9.999,99',
                    labelText: 'Account balance',
                    keyboardType: TextInputType.number,
                    onChanged: (value) => context.read<SettingsBloc>().add(
                          BalanceChanged(balance: value),
                        ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: RaisedButton(
                        elevation: 0,
                        disabledElevation: 0,
                        highlightElevation: 0,
                        onPressed: state.isCurrentLoading
                            ? null
                            : () => context.read<SettingsBloc>().add(
                                  SaveSettings(),
                                ),
                        child: const Text('Save settings'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}