import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/repositories/local_storage/local_storage_contract.repo.dart';
import 'splash.event.dart';
import 'splash.state.dart';

/// Created by marcellocamara@id.uff.br on 04/06/2021.

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ILocalStorage localStorageRepository;

  SplashBloc({
    @required SplashState initialState,
    @required this.localStorageRepository,
  }) : super(initialState);

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    switch (event) {
      case SplashEvent.fetchData:
        yield SplashState.loading;
        // Read name from local storage (saved on cache)
        final temporaryRequest = await localStorageRepository.readValue('name');
        print(temporaryRequest); // null if it's not saved
        // Temporary load
        await Future.delayed(const Duration(seconds: 3));
        yield SplashState.done;
        break;
    }
  }
}
