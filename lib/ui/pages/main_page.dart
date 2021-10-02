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

import 'package:web_client/ui/components/error_message.dart';

import '../../core/use_cases/observe_timetables/observe_timetables_bloc.dart';
import '../components/back_button.dart';
import '../components/loading_indicator.dart';
import 'timetable_page.dart';
import '../../core/entities/timetable.dart';
import '../components/list_element_card.dart' as card_element;
import '../../core/contracts/page_contract.dart';

import 'dart:html';

class MainPage implements PageContract {
  static final nothingToShowMessage = 'Здесь нечего показывать.';
  List _timetables = <Timetable>[];

  @override
  void render() {
    document.querySelector('#root')?.innerHtml = makeCards();
  }

  void listen(ObserveTimetablesBloc bloc) {
    bloc.stream.listen((state) {
      if (state is ObserveTimetablesLoadingContent) {
        document.querySelector('#root')?.innerHtml = makeLoadingIndicator();
        bloc.add(ObserveTimetablesLoadContent());
      }

      if (state is ObserveTimetablesContentLoaded) {
        _timetables = state.timetables;

        if (_timetables.isEmpty) {
          document.querySelector('#root')?.innerHtml =
              makeMessage('message', 'no-data', nothingToShowMessage);
        } else {
          render();
          bindCardsClick();
        }
      }
    });
  }

  void bindCardsClick() {
    print('bind cards click');
    document
        .querySelectorAll('.${card_element.cardClassName}')
        .forEach((element) {
      element.addEventListener('click', (event) {
        TimetablePage(
                _timetables[int.parse((event.currentTarget as Element).id)])
            .render();

        document.querySelector('#back-button')?.addEventListener('click',
            (event) {
          hideBackButton();
          render();
          bindCardsClick();
        });
      });
    });
  }

  String makeCards() {
    List cards = <String>[];

    for (var i = 0; i < _timetables.length; i++) {
      cards.add(card_element.makeCard(i.toString(), _timetables[i].linkTitle));
    }

    return cards.join();
  }
}
