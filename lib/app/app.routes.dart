import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/bank1/bank1.page.dart';
import 'features/bank2/bank2.page.dart';
import 'features/settings/settings.page.dart';
import 'features/splash/splash.page.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

abstract class AppRoutes {
  static const splash = '/';
  static const settings = '/settings';
  static const bank1 = '/bank1';
  static const bank2 = '/bank2';

  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case settings:
        return CupertinoPageRoute(builder: (_) => SettingsPage());
      case bank1:
        return CupertinoPageRoute(builder: (_) => Bank1Page());
      case bank2:
        return CupertinoPageRoute(builder: (_) => Bank2Page());
      default:
        return null;
    }
  }
}
