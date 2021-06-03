import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app.bloc.dart';

/// Created by marcellocamara@id.uff.br on 02/06/2021.

class FirstCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            BlocBuilder<AppBloc, int>(
              builder: (_, state) {
                return Text(
                  '$state',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            const SizedBox(height: 20),
            RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed('/second'),
              child: Text('Go to second page'),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'Increment page 1',
            onPressed: () => context.read<AppBloc>().add(AppEvent.increment),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'Decrement page 1',
            onPressed: () => context.read<AppBloc>().add(AppEvent.decrement),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
