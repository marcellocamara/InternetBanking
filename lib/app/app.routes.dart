import 'package:flutter/material.dart';

import 'pages/first_counter.page.dart';
import 'pages/second_counter.page.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

class AppRoutes {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => FirstCounterPage(),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => SecondCounterPage(),
        );
      default:
        return null;
    }
  }
}
