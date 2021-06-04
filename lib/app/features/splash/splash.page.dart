import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/app.routes.dart';
import '../../shared/repositories/local_storage/local_storage.repo.dart';
import 'bloc/splash.bloc.dart';
import 'bloc/splash.event.dart';
import 'bloc/splash.state.dart';

/// Created by marcellocamara@id.uff.br on 04/06/2021.

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = SplashBloc(
      initialState: SplashState.loading,
      localStorageRepository: context.read<LocalStorageRepository>(),
    );
    bloc.listen((state) {
      if (state == SplashState.done) {
        Navigator.pushReplacementNamed(context, AppRoutes.settings);
      }
    });
    bloc.add(SplashEvent.fetchData);
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: const Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
            strokeWidth: 3,
          ),
        ),
      ),
    );
  }
}
