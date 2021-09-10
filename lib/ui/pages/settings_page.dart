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

import '../../core/bloc/welcome/welcome_bloc.dart';
import '../../core/contracts/page_contract.dart';
import 'group_selector_base_page.dart';

import 'dart:html';

class SettingsPage extends GroupSelectorBasePage implements PageContract {
  SettingsPage() {
    render();
  }

  static const copyrightString = 'Copyright (c) 2021 Timofey Chuchkanov';
  static const licenseNoteString = 'Licensed under the GNU AGPL v3.0';

  void listen(WelcomeBloc bloc) {
    bloc.stream.listen((state) {
      initiateLoading(state, bloc);
      showAndBindSelector(state: state, bloc: bloc, firstOptionBlank: false);
    });
  }

  @override
  void render() {
    final root = document.querySelector('#root');

    root?.innerHtml =
        '<div id="${GroupSelectorBasePage.selectorPlaceholderId}"></div>';
  }
}
