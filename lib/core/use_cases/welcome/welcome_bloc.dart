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

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

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
      yield WelcomeComponentSelected(event.groupId);
    }
  }
}
