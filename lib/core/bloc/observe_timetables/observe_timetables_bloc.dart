import '../../contracts/repository_contract.dart';
import '../../entities/timetable.dart';

import 'dart:async';
import 'package:bloc/bloc.dart';

part 'observe_timetables_event.dart';
part 'observe_timetables_state.dart';

class ObserveTimetablesBloc
    extends Bloc<ObserveTimetablesEvent, ObserveTimetablesState> {
  ObserveTimetablesBloc(this.repo) : super(ObserveTimetablesLoadingContent());
  final RepositoryContract repo;

  @override
  Stream<ObserveTimetablesState> mapEventToState(
    ObserveTimetablesEvent event,
  ) async* {

    if (event is ObserveTimetablesInit) {
      yield ObserveTimetablesLoadingContent();
    }

    if (event is ObserveTimetablesLoadContent) {
      yield ObserveTimetablesContentLoaded(await repo.getTimetables(repo.groupId));
    }
  }
}
