import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app.routes.dart';
import '../../shared/widgets/custom_text_form_field.ui.dart';
import 'bloc/settings.bloc.dart';
import 'bloc/settings.event.dart';
import 'bloc/settings.state.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

class SettingsPage extends StatelessWidget {
  /// Closes keyboard and open the new page
  void _openPage({@required BuildContext context, @required String routeName}) {
    FocusScope.of(context)?.focusedChild?.unfocus();
    Navigator.of(context).pushNamed(routeName);
  }

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
                    initialValue: state.agencyNumber,
                    hintText: 'Agency number',
                    labelText: 'Agency number',
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      BlacklistingTextInputFormatter(RegExp('[\\.|\\,]')),
                    ],
                    onChanged: (value) => context.read<SettingsBloc>().add(
                          AgencyNumberChanged(agencyNumber: value),
                        ),
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormFieldWidget(
                    enabled: !state.isCurrentLoading,
                    initialValue: state.accountNumber,
                    hintText: 'Account number',
                    labelText: 'Account number',
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      BlacklistingTextInputFormatter(RegExp('[\\.\\,\\ ]')),
                    ],
                    onChanged: (value) => context.read<SettingsBloc>().add(
                          AccountNumberChanged(accountNumber: value),
                        ),
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormFieldWidget(
                    enabled: !state.isCurrentLoading,
                    initialValue:
                        state.balance == 0 ? '' : state.balance.toString(),
                    hintText: 'R\$ 1000.00',
                    labelText: 'Account balance',
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      BlacklistingTextInputFormatter(RegExp('[\\-\\,\\ ]')),
                    ],
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: OutlineButton(
                            onPressed: state.isCurrentLoading
                                ? null
                                : () => _openPage(
                                      context: context,
                                      routeName: AppRoutes.santander,
                                    ),
                            child: Text('Open Santander'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: OutlineButton(
                            onPressed: state.isCurrentLoading
                                ? null
                                : () => _openPage(
                                      context: context,
                                      routeName: AppRoutes.bank2,
                                    ),
                            child: Text('Open Bank 2'),
                          ),
                        ),
                      ],
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
