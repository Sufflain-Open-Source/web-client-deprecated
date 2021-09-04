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

part 'select_group_id_event.dart';
part 'select_group_id_state.dart';

class SelectGroupIdBloc extends Bloc<SelectGroupIdEvent, SelectGroupIdState> {
  SelectGroupIdBloc(this.repo) : super(SelectGroupIdComponentLoading());

  final RepositoryContract repo;

  @override
  Stream<SelectGroupIdState> mapEventToState(
    SelectGroupIdEvent event,
  ) async* {
    if (event is SelectGroupIdInit) {
      yield SelectGroupIdComponentLoading();
    }

    if (event is SelectGroupIdComponentLoad) {
      yield SelectGroupIdComponentLoaded(await repo.getGroups());
    }

    if (event is SelectGroupIdComponentSelect) {
      repo.groupId = event.groupId;
      yield SelectGroupIdComponentSelected();
    }
  }
}
