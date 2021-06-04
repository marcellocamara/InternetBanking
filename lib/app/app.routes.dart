import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/settings/settings.page.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

class AppRoutes {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return CupertinoPageRoute(
          builder: (_) => SettingsPage(),
        );
      default:
        return null;
    }
  }
}
