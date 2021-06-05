import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.routes.dart';
import 'shared/theme/app.theme.dart';
import 'features/settings/bloc/settings.bloc.dart';
import 'features/settings/bloc/settings.state.dart';
import 'shared/repositories/local_storage/local_storage.repo.dart';

/// Created by marcellocamara@id.uff.br on 02/06/2021.

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<LocalStorageRepository>(
      create: (_) => LocalStorageRepository(),
      child: BlocProvider<SettingsBloc>(
        create: (context) => SettingsBloc(
          initialState: SettingsState(),
          localStorageRepository: context.read<LocalStorageRepository>(),
        ),
        child: MaterialApp(
          title: 'Internet Banking Simulator',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themeData,
          onGenerateRoute: AppRoutes.onGenerateRoute,
        ),
      ),
    );
  }
}
