import 'package:flutter/material.dart';

import 'app.routes.dart';

/// Created by marcellocamara@id.uff.br on 02/06/2021.

class MainApp extends StatelessWidget {
  final _appRoutes = AppRoutes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet Banking Simulator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _appRoutes.onGenerateRoute,
    );
  }
}
