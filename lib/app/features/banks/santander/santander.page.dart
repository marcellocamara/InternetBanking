import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared/theme/app.theme.dart';
import 'components/santander_account.ui.dart';
import 'components/santander_ad.ui.dart';
import 'components/santander_appbar.ui.dart';
import 'components/santander_operations.ui.dart';
import 'components/santander_people.ui.dart';

/// Created by marcellocamara@id.uff.br on 04/06/2021.

class SantanderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.santanderThemeData,
      home: Scaffold(
        appBar: const SantanderAppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SantanderAccount(),
              SantanderOperations(),
              const SantanderPeople(),
              const SantanderAd(),
            ],
          ),
        ),
      ),
    );
  }
}
