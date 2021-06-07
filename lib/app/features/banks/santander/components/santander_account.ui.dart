import 'package:flutter/material.dart';

import 'santander_account_balance.ui.dart';
import 'santander_account_info.ui.dart';

/// Created by marcellocamara@id.uff.br on 05/06/2021.

class SantanderAccount extends StatelessWidget {
  const SantanderAccount();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SantanderAccountInfo(),
        SantanderAccountBalance(),
      ],
    );
  }
}
