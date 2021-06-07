/// Created by marcellocamara@id.uff.br on 03/06/2021.

class SettingsState {
  final String name, agencyNumber, accountNumber;
  final double balance;
  final bool isCurrentLoading;

  SettingsState({
    this.name = '',
    this.agencyNumber = '',
    this.accountNumber = '',
    this.balance = 0,
    this.isCurrentLoading = false,
  });

  SettingsState copyWith({
    String name,
    String agencyNumber,
    String accountNumber,
    double balance,
    bool isCurrentLoading,
  }) {
    return SettingsState(
      name: name ?? this.name,
      agencyNumber: agencyNumber ?? this.agencyNumber,
      accountNumber: accountNumber ?? this.accountNumber,
      balance: balance ?? this.balance,
      isCurrentLoading: isCurrentLoading ?? this.isCurrentLoading,
    );
  }
}
