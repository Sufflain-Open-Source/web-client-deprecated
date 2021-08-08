part of 'observe_timetables_bloc.dart';

abstract class ObserveTimetablesState {}

class ObserveTimetablesLoadingContent extends ObserveTimetablesState {}

class ObserveTimetablesContentLoaded extends ObserveTimetablesState {
  ObserveTimetablesContentLoaded(this.timetables);

  final List<Timetable> timetables;
}

// TODO implement error handling
class ObserveTimetablesContentNotLoaded extends ObserveTimetablesState {}
