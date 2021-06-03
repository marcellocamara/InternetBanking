import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.bloc.dart';
import 'app.routes.dart';

/// Created by marcellocamara@id.uff.br on 02/06/2021.

class AppWidget extends StatelessWidget {
  final _appRoutes = AppRoutes();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (_) => AppBloc(0),
      child: MaterialApp(
        title: 'Internet Banking Simulator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: _appRoutes.onGenerateRoute,
      ),
    );
  }
}
