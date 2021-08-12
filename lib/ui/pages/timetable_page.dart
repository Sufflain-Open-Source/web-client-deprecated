import 'dart:html';

import '../../core/entities/timetable.dart';
import '../../core/contracts/page_contract.dart';

class TimetablePage implements PageContract {
  TimetablePage(this.timetable);

  final Timetable timetable;

  @override
  void render() {
    final rootElement = document.querySelector('#root');
    final pageContent = '''
    <table>
      <thead>
        <td id=""></td>
        <td id=""></td>
      </thead>
      <tbody>
      </tbody>
    </table>
    ''';

    rootElement?.innerHtml = pageContent;
  }
}
