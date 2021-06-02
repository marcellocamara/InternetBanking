import 'package:flutter_bloc/flutter_bloc.dart';

/// Created by marcellocamara@id.uff.br on 02/06/2021.

enum CounterEvent {
  increment,
  decrement,
}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
    }
  }
}
