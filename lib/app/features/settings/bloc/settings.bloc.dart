import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/repositories/local_storage/local_storage_contract.repo.dart';
import '../bloc/settings.state.dart';
import 'settings.event.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ILocalStorage localStorageRepository;

  SettingsBloc({
    @required SettingsState initialState,
    @required this.localStorageRepository,
  }) : super(initialState);

  @override
  Stream<SettingsState> mapEventToState(SettingsEvent event) async* {
    if (event is NameChanged) {
      yield state.copyWith(name: event.name);
    } else if (event is AgencyNumberChanged) {
      yield state.copyWith(agencyNumber: event.agencyNumber);
    } else if (event is AccountNumberChanged) {
      yield state.copyWith(accountNumber: event.accountNumber);
    } else if (event is BalanceChanged) {
      yield state.copyWith(balance: double.tryParse(event.balance) ?? 0);
    } else if (event is SaveSettings) {
      yield state.copyWith(isCurrentLoading: true);
      // Temporary load
      await Future.delayed(const Duration(seconds: 5));
      yield state.copyWith(isCurrentLoading: false);
    }
  }
}
