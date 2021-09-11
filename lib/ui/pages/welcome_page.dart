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

import 'group_selector_base_page.dart';
import '../../../core/contracts/page_contract.dart';
import '../../core/bloc/welcome/welcome_bloc.dart';

import 'dart:html';

class WelcomePage extends GroupSelectorBasePage implements PageContract {
  WelcomePage(this.onSubmitButtonClick) {
    render();
  }

  final Function onSubmitButtonClick;

  static const titleId = 'title';
  static const noteId = 'note';
  static const logoId = 'logo';
  static const selectSection = 'select-group-section';
  static const submitButtonId = 'submitButton';
  static const title = 'Выберите группу.';
  static const note =
      '<span>Позднее свой выбор</span> можно изменить в настройках.';
  static const submitButtonText = 'Продолжить';

  void listen(WelcomeBloc bloc) {
    bloc.stream.listen((state) {
      initiateLoading(state, bloc);
      showAndBindSelector(state: state, bloc: bloc, firstOptionBlank: true);

      if (state is WelcomeComponentSelected) {
        final button = querySelector('#$submitButtonId');

        if (state.groupId.trim().isNotEmpty) {
          (button as ButtonElement).disabled = false;
        } else {
          (button as ButtonElement).disabled = true;
        }

        button.addEventListener('click', (event) {
          onSubmitButtonClick();
        });
      }
    });
  }

  @override
  void render() {
    final rootElement = document.querySelector('#root');
    final pageContent = '''
    <div id="welcome-section">
      <div id="welcome-text">
        <h1 id="$titleId">$title</h1>
        <div id="$noteId">$note</div>
      </div>
      <div id="$logoId"></div>
    </div>
    <div id="$selectSection">
      <div id="${GroupSelectorBasePage.selectorPlaceholderId}"></div>
    </div>
    <button id="$submitButtonId" disabled >$submitButtonText</button>
    ''';

    rootElement?.innerHtml = pageContent;
  }
}
