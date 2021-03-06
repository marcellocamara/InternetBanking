import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/banks/santander/santander.page.dart';
import 'features/banks/bank2/bank2.page.dart';
import 'features/settings/settings.page.dart';
import 'features/splash/splash.page.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

abstract class AppRoutes {
  static const splash = '/';
  static const settings = '/settings';
  static const santander = '/santander';
  static const bank2 = '/bank2';

  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case settings:
        return CupertinoPageRoute(builder: (_) => SettingsPage());
      case santander:
        return CupertinoPageRoute(builder: (_) => SantanderPage());
      case bank2:
        return CupertinoPageRoute(builder: (_) => Bank2Page());
      default:
        return null;
    }
  }
}
