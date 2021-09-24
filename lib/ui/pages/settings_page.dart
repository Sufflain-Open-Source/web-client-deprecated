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

import '../../core/use_cases/clear_group_id/clear_group_id.dart' as clear_group_id;
import '../../core/use_cases/welcome/welcome_bloc.dart';
import '../../core/contracts/page_contract.dart';
import 'group_selector_base_page.dart';

import 'dart:html';

class SettingsPage extends GroupSelectorBasePage implements PageContract {
  SettingsPage() {
    render();
  }

  static const confirmGroupClearMessage =
      'После удаления группы, приложение будет перезапущено. Продолжить?';
  static const mainSectionId = 'settings-main-section';
  static const mainSectionTitleId = 'settings-main-section-title';
  static const mainSectionTitle = 'Основные';
  static const groupSeletorLabelId = 'group-selector-label';
  static const groupSelectorLabel = 'Ваша группа';
  static const clearGroupButtonId = 'clear-group';
  static const copyrightSectionId = 'copyright-section';
  static const copyrightStringId = 'copyright';
  static const licenceNoteStringId = 'license';
  static const copyrightString = 'Copyright (c) 2021 Timofey Chuchkanov';
  static const licenseNoteString = 'Licensed under the GNU AGPL v3.0';

  void listen(WelcomeBloc welcomeBloc) {
    welcomeBloc.stream.listen((state) {
      initiateLoading(state, welcomeBloc);
      showAndBindSelector(
          state: state, bloc: welcomeBloc, firstOptionBlank: false);
    });

    final clearButton =
        document.querySelector('#${SettingsPage.clearGroupButtonId}');

    clearButton?.addEventListener('click', (event) {
      final clearGroupConfirmed = window.confirm(confirmGroupClearMessage);

      if (clearGroupConfirmed) {
        clear_group_id.clearGroupId();
        window.location.reload();
      }
    });
  }

  @override
  void render() {
    final root = document.querySelector('#root');

    root?.innerHtml = '''
        <p id="$mainSectionTitleId">$mainSectionTitle</p>
        <div id="$mainSectionId">
          <p id="$groupSeletorLabelId">$groupSelectorLabel</p>
          <div id="${GroupSelectorBasePage.selectorPlaceholderId}"></div>
          <button id="$clearGroupButtonId">x</button>
        </div>
        <div id="$copyrightSectionId">
          <p id="$copyrightStringId">$copyrightString</p>
          <p id="$licenceNoteStringId">$licenseNoteString</p>
        </div>
        ''';
  }
}
