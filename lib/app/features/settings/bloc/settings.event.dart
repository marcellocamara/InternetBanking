/// Created by marcellocamara@id.uff.br on 03/06/2021.

abstract class SettingsEvent {}

class NameChanged extends SettingsEvent {
  final String name;

  NameChanged({this.name});
}

class AccountNumberChanged extends SettingsEvent {
  final String accountNumber;

  AccountNumberChanged({this.accountNumber});
}

class BalanceChanged extends SettingsEvent {
  final String balance;

  BalanceChanged({this.balance});
}

class SaveSettings extends SettingsEvent {}
