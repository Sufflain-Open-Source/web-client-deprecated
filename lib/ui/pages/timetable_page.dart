import 'package:web_client/ui/components/back_button.dart';

import '../../core/entities/timetable.dart';
import '../../core/contracts/page_contract.dart';
import '../components/table_body_row.dart';

import 'dart:html';

class TimetablePage implements PageContract {
  TimetablePage(this.timetable) {
    showBackButton();
    render();
  }

  static const timeColumnHeaderId = 'time';
  static const infoColumnHeaderId = 'info';
  static const timetableDivId = 'timetable';

  final Timetable timetable;

  @override
  void render() {
    final rootElement = document.querySelector('#root');
    final pageContent = '''
    <div>
      <h1>${timetable.title}</h1>
      <table border=1>
        <thead>
          <tr>
            <td id="$timeColumnHeaderId">Время</td>
            <td id="$infoColumnHeaderId">Информация</td>
          </tr>
        </thead>
        <tbody>
        ${timetable.lessons.map((lesson) => makeRow(lesson.time, lesson.data)).toList().join()}
        </tbody>
      </table>
    </div>
    ''';

    rootElement?.innerHtml = pageContent;
  }
}
