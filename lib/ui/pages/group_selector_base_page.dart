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

import '../../data/implementations/repository.dart';
import '../components/error_message.dart';
import '../components/selector.dart';
import '../components/loading_indicator.dart';
import '../../core/use_cases/welcome/welcome_bloc.dart';

import 'dart:html';

class GroupSelectorBasePage {
  static const selectorPlaceholderId = 'groupSelectorPlaceholder';
  static const errorMessageLoadGroups =
      'Не удалось загрузить группы. Повторите попытку позже.';

  void initiateLoading(WelcomeState state, WelcomeBloc bloc) {
    if (state is WelcomeComponentLoading) {
      document.querySelector('#$selectorPlaceholderId')?.innerHtml =
          makeLoadingIndicator();
      bloc.add(WelcomeComponentLoad());
    }
  }

  void showAndBindSelector(
      {required WelcomeState state,
      required WelcomeBloc bloc,
      required bool firstOptionBlank,
      required bool shoudlSaveUsingButton}) {
    if (state is WelcomeComponentLoaded) {
      final groups = state.groups;
      final placeholder = document.querySelector('#$selectorPlaceholderId');

      var groupsSorted;

      if (!firstOptionBlank) {
        final localGroupId = Repository.instance.groupId;
        groupsSorted = [localGroupId];
        var groupsCopy = List<String>.from(groups);
        groupsCopy.remove(localGroupId);
        groupsSorted.addAll(groupsCopy);
      }

      if (groups.isEmpty) {
        placeholder?.innerHtml =
            makeMessage('loading-error', errorMessageLoadGroups);
      } else {
        placeholder?.innerHtml = makeSelector(
            id: 'groups',
            elements: () {
              return firstOptionBlank == true ? groups : groupsSorted;
            }(),
            firstOptionBlank: firstOptionBlank);

        final selector = document.querySelector('#groups');
        selector?.addEventListener('change', (event) {
          final selectedGroup = (selector as SelectElement).value!;          

          if (!shoudlSaveUsingButton) {
            bloc.add(WelcomeComponentSaveSelectedGroup(selectedGroup));
          } else {
            bloc.add(WelcomeComponentSelect(selectedGroup));
          }
        });
      }
    }
  }
}
