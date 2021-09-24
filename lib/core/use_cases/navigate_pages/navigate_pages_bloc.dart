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

import '../../../data/implementations/repository.dart';

import 'dart:async';
import 'package:bloc/bloc.dart';

part 'navigate_pages_event.dart';
part 'navigate_pages_state.dart';

class NavigatePagesBloc extends Bloc<NavigatePagesEvent, NavigatePagesState> {
  NavigatePagesBloc() : super(NavigatePagesInitial());

  @override
  Stream<NavigatePagesState> mapEventToState(
    NavigatePagesEvent event,
  ) async* {
    if (event is Init) {
      yield NavigatePagesInitial();
    }

    if (event is BindNavBarSwitchesToPages) {
      yield NavBarSwitchesBinded();
    }

    if (event is CheckGroupIdPresence) {
      final repo = Repository.instance;
      var isGroupStored = false;

      if (repo.isGroupSaved && repo.groupId.isNotEmpty) {
        isGroupStored = true;
      }

      yield GroupIdPresenceChecked(isGroupStored);
    }

    if (event is LaunchWelcomePage) {
      yield WelcomePageLaunched();
    }

    if (event is LaunchMainPage) {
      yield MainPageLaunched();
    }

    if (event is LaunchSettingsPage) {
      yield SettingsPageLaunched();
    }
  }
}
