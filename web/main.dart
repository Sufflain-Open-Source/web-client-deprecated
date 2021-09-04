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

import 'dart:html';

import 'package:web_client/core/bloc/observe_timetables/observe_timetables_bloc.dart';
import 'package:web_client/core/bloc/welcome/welcome_bloc.dart';

import 'package:web_client/data/implementations/repository.dart';

import 'package:web_client/ui/pages/main_page.dart';
import 'package:web_client/ui/pages/settings_page.dart';
import 'package:web_client/ui/pages/welcome_page.dart';

void main() async {
  // final welcomeBloc = WelcomeBloc(Repository.instance);
  // final welcomePage = WelcomePage();

  // welcomeBloc.add(WelcomeComponentInit());
  // window.addEventListener('unload', (event) => welcomeBloc.close());
  // welcomePage.listen(welcomeBloc);

  final mainBloc = ObserveTimetablesBloc(Repository.instance);
  final mainPage = MainPage();
  mainBloc.add(ObserveTimetablesInit());
  window.addEventListener('unload', (event) => mainBloc.close());
  mainPage.listen(mainBloc);

  // final welcomeBloc = WelcomeBloc(Repository.instance);
  // final settingsPage = SettingsPage();

  // welcomeBloc.add(WelcomeComponentInit());
  // window.addEventListener('unload', (event) => welcomeBloc.close());
  // settingsPage.listen(welcomeBloc);
}
