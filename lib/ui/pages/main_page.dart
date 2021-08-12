import 'dart:html';

import 'package:web_client/core/bloc/observe_timetables/observe_timetables_bloc.dart';
import 'package:web_client/ui/components/loading_indicator.dart';

import '../../core/entities/timetable.dart';
import '../components/list_element_card.dart' as card_element;
import '../../core/contracts/page_contract.dart';

class MainPage implements PageContract {
  List _timetables = <Timetable>[];

  @override
  void render() {}

  void listen(ObserveTimetablesBloc bloc) {
    bloc.stream.listen((state) {
      if (state is ObserveTimetablesLoadingContent) {
        document.querySelector('#root')?.innerHtml = makeLoadingIndicator();
        bloc.add(ObserveTimetablesLoadContent());
      }

      if (state is ObserveTimetablesContentLoaded) {
        _timetables = state.timetables;
        showCards();
        bindCardsClick();
      }
    });
  }

  void bindCardsClick() {
    document
        .querySelectorAll('.${card_element.cardClassName}')
        .forEach((element) {
      element.addEventListener(
          'click',
          (event) => print(
              'Card with id[${(event.currentTarget as Element).id}] clicked'));
    });
  }

  void showCards() {
    List cards = <String>[];

    for (var i = 0; i < _timetables.length; i++) {
      cards.add(card_element.makeCard(i.toString(), _timetables[i].linkTitle));
    }

    final cardsHtml = cards.join();
    document.querySelector('#root')?.innerHtml = cardsHtml;
  }
}
