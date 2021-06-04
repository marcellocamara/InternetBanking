/// Created by marcellocamara@id.uff.br on 03/06/2021.

class SettingsState {
  final String name, accountNumber;
  final double balance;
  final bool isCurrentLoading;

  SettingsState({
    this.name = '',
    this.accountNumber = '',
    this.balance = 0,
    this.isCurrentLoading = false,
  });

  SettingsState copyWith({
    String name,
    String accountNumber,
    double balance,
    bool isCurrentLoading,
  }) {
    return SettingsState(
      name: name ?? this.name,
      accountNumber: accountNumber ?? this.accountNumber,
      balance: balance ?? this.balance,
      isCurrentLoading: isCurrentLoading ?? this.isCurrentLoading,
    );
  }
}
