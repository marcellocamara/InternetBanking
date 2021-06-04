import 'package:flutter_bloc/flutter_bloc.dart';

import 'settings.event.dart';
import 'settings.state.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(SettingsState initialState) : super(initialState);

  @override
  Stream<SettingsState> mapEventToState(SettingsEvent event) async* {
    if (event is NameChanged) {
      yield state.copyWith(name: event.name);
    } else if (event is AccountNumberChanged) {
      yield state.copyWith(accountNumber: event.accountNumber);
    } else if (event is BalanceChanged) {
      yield state.copyWith(balance: double.tryParse(event.balance) ?? 0);
    } else if (event is SaveSettings) {
      yield state.copyWith(isCurrentLoading: true);
      await Future.delayed(const Duration(seconds: 5));
      yield state.copyWith(isCurrentLoading: false);
    }
  }
}
