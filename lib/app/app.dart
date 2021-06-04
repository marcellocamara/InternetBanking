import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.routes.dart';
import 'app.theme.dart';
import 'features/settings/settings.bloc.dart';
import 'features/settings/settings.state.dart';

/// Created by marcellocamara@id.uff.br on 02/06/2021.

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SettingsBloc(SettingsState()),
        ),
      ],
      child: MaterialApp(
        title: 'Internet Banking Simulator',
        theme: AppTheme.themeData,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
