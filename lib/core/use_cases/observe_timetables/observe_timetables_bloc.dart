/*
    Copyright (C) 2021  Timofey Chuchkanov

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

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
      final timetables = await repo.getTimetables(repo.groupId);
      final timetalbesSorted = sortTimetablesByTimePosted(timetables);

      yield ObserveTimetablesContentLoaded(timetalbesSorted);
    }
  }

  List<Timetable> sortTimetablesByTimePosted(List<Timetable> timetables) {
    var timetablesSorted = timetables;
    timetables.sort((first, second) => first.order.compareTo(second.order));

    return timetablesSorted;
  }
}
