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

// import 'dart:async';
// import 'dart:html';
// import 'dart:io';

// import 'package:web_client/core/bloc/observe_timetables/observe_timetables_bloc.dart';
// import 'package:web_client/core/bloc/welcome/welcome_bloc.dart';
// import 'package:web_client/data/implementations/repository.dart';
// import 'package:web_client/data/util/remote_database.dart';

import 'package:web_client/core/entities/lesson.dart';
import 'package:web_client/core/entities/timetable.dart';
import 'package:web_client/ui/components/back_button.dart';
import 'package:web_client/ui/pages/timetable_page.dart';
// import 'package:web_client/ui/components/loading_indicator.dart';
// import 'package:web_client/ui/components/selector.dart';
// import 'package:web_client/ui/pages/main_page.dart';
// import 'package:web_client/ui/pages/welcome_page.dart';

void main() async {
  // final welcomeBloc = WelcomeBloc(Repository.instance);
  // final welcomePage = WelcomePage();

  // welcomeBloc.add(WelcomeComponentInit());
  // window.addEventListener('unload', (event) => welcomeBloc.close());
  // welcomePage.listen(welcomeBloc);

  // final mainBloc = ObserveTimetablesBloc(Repository.instance);
  // final mainPage = MainPage();
  // mainBloc.add(ObserveTimetablesInit());
  // window.addEventListener('unload', (event) => mainBloc.close());
  // mainPage.listen(mainBloc);
  final timetable =
      Timetable(linkTitle: 'link title', title: 'Title', lessons: [
    Lesson(time: 'time', data: ['data']),
    Lesson(time: 'time2', data: ['data2', 'data2', 'data2'])
  ]);

  final timetablePage = TimetablePage(timetable);
  timetablePage.render();
}
