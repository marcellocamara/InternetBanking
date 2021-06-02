import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter/blocs/counter.bloc.dart';
import 'counter/counter.page.dart';

/// Created by marcellocamara@id.uff.br on 02/06/2021.

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet Banking Simulator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => CounterBloc(0),
        child: CounterPage(),
      ),
    );
  }
}
