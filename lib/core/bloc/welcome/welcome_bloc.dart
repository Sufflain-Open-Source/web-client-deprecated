import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:web_client/core/contracts/repository_contract.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc(this.repo) : super(WelcomeComponentLoading());

  final RepositoryContract repo;

  @override
  Stream<WelcomeState> mapEventToState(
    WelcomeEvent event,
  ) async* {
    if (event is WelcomeComponentInit) {
      yield WelcomeComponentLoading();
    }

    if (event is WelcomeComponentLoad) {
      yield WelcomeComponentLoaded(await repo.getGroups());
    }

    if (event is WelcomeComponentSelect) {
      repo.groupId = event.groupId;
      yield WelcomeComponentSelected();
    }
  }
}
