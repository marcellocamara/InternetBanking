import 'package:bloc/bloc.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

enum AppEvent {
  increment,
  decrement,
}

class AppBloc extends Bloc<AppEvent, int> {
  AppBloc(int initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(event) async* {
    switch (event) {
      case AppEvent.increment:
        yield state + 1;
        break;
      case AppEvent.decrement:
        yield state - 1;
        break;
    }
  }
}
