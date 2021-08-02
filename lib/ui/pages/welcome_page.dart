import 'dart:async';

import 'package:web_client/ui/components/error_message.dart';

import '../../../core/contracts/page_contract.dart';
import '../../core/bloc/welcome/welcome_bloc.dart';
import '../../data/implementations/repository.dart';
import '../components/loading_indicator.dart';
import '../components/selector.dart';

import 'dart:html';

class WelcomePage implements PageContract {
  WelcomePage() {
    render();
  }

  static const titleId = 'title';
  static const noteId = 'note';
  static const selectorPlaceholderId = 'groupSelectorPlaceholder';
  static const submitButtonId = 'submitButton';

  static const title = 'Добро пожаловать! Для начала выберите свою группу.';
  static const note =
      'Это одноразовая процедура. Позднее свой выбор можно изменить в настройках.';
  static const submitButtonText = 'Продолжить';
  static const errorMessageLoadGroups =
      'Не удалось загрузить группы. Повторите попытку позже.';

  var _selectedGroup = '';

  void listen(WelcomeBloc bloc) {
    bloc.stream.listen((state) {
      if (state is WelcomeComponentLoading) {
        document.querySelector('#$selectorPlaceholderId')?.innerHtml =
            makeLoadingIndicator();
        bloc.add(WelcomeComponentLoad());
      }

      if (state is WelcomeComponentLoaded) {
        final _groups = state.groups;
        final placeholder = document.querySelector('#$selectorPlaceholderId');

        if (_groups.isEmpty) {
          placeholder?.innerHtml =
              makeErrorMessage('loading-error', errorMessageLoadGroups);
        } else {
          placeholder?.innerHtml = makeSelector('groups', _groups);

          final selector = document.querySelector('#groups');
          selector?.addEventListener('change', (event) {
            _selectedGroup = (selector as SelectElement).value!;
            bloc.add(WelcomeComponentSelect(_selectedGroup));
          });
        }
      }

      if (state is WelcomeComponentSelected) {
        final button = querySelector('#$submitButtonId');

        if (_selectedGroup.trim().isNotEmpty) {
          (button as ButtonElement).disabled = false;
        } else {
          (button as ButtonElement).disabled = true;
        }

        button.addEventListener(
            'click', (event) => print(Repository.instance.groupId));
      }
    });
  }

  @override
  void render() {
    final rootElement = document.querySelector('#root');
    final pageContent = '''
    <h1 id="$titleId">$title</h1>
    <div id="$noteId">$note</div>
    <div id="$selectorPlaceholderId"></div>
    <button id="$submitButtonId" disabled >$submitButtonText</button>
    ''';

    rootElement?.innerHtml = pageContent;
  }
}
