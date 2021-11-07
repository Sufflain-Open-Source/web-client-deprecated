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

import '../components/back_button.dart';
import '../../core/entities/timetable.dart';
import '../../core/contracts/page_contract.dart';
import '../components/table_body_row.dart';

import 'dart:html';

class TimetablePage implements PageContract {
  TimetablePage(this.timetable) {
    showBackButton();
    render();
  }

  static const linkTitleId = 'link-title';
  static const titleId = 'timetable-title';
  static const timeColumnHeaderId = 'time';
  static const infoColumnHeaderId = 'info';
  static const timetableDivId = 'timetable';

  final Timetable timetable;

  @override
  void render() {
    final rootElement = document.querySelector('#root');
    final pageContent = '''
    <div class="timetable-container">
      <p id="$linkTitleId">${timetable.linkTitle}</p>
      <p id="$titleId">${timetable.title}</p>
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
