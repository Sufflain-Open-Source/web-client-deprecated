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

import '../core/use_cases/navigate_pages/navigate_pages_bloc.dart';
import '../core/use_cases/observe_timetables/observe_timetables_bloc.dart';
import '../core/use_cases/welcome/welcome_bloc.dart';
import '../data/implementations/repository.dart';
import '../ui/pages/main_page.dart';
import '../ui/pages/settings_page.dart';
import '../ui/pages/welcome_page.dart';

import 'dart:html';
import 'package:bloc/bloc.dart';

enum NavBarRadioButton { main, settings }

class InitializeApp {
  InitializeApp(this.navigatePagesBloc);

  final NavigatePagesBloc navigatePagesBloc;
  final welcomeBloc = WelcomeBloc(Repository.instance);
  final mainBloc = ObserveTimetablesBloc(Repository.instance);
  final settingsBloc = WelcomeBloc(Repository.instance);

  final mainPage = MainPage();
  final settingsPage = SettingsPage();

  void listen() {
    mainPage.listen(mainBloc);
    settingsPage.listen(settingsBloc);

    _bindOnWindowCloseToBlocs(
        [navigatePagesBloc, welcomeBloc, mainBloc, settingsBloc]);
    _bindNavBarSwitches(
        mainSwitchFunction: _launchMainPage,
        settingsSwitchFunction: () {
          navigatePagesBloc.add(LaunchSettingsPage());
        });

    navigatePagesBloc.stream.listen((state) {
      var isGroupStoredLocally = false;

      if (state is NavigatePagesInitial) {
        navigatePagesBloc.add(CheckGroupIdPresence());
      }

      if (state is GroupIdPresenceChecked) {
        isGroupStoredLocally = state.isGroupStoredLocally;

        if (isGroupStoredLocally) {
          navigatePagesBloc.add(LaunchMainPage());
        } else {
          navigatePagesBloc.add(LaunchWelcomePage());
        }
      }

      if (state is WelcomePageLaunched) {
        final welcomePage = WelcomePage(_launchMainPage);

        welcomeBloc.add(WelcomeComponentInit());
        welcomePage.listen(welcomeBloc);
      }

      if (state is MainPageLaunched) {
        final navBar = document.querySelector('nav');

        navBar?.hidden = false;

        mainBloc.add(ObserveTimetablesInit());
      }

      if (state is SettingsPageLaunched) {
        settingsPage.render();
        settingsBloc.add(WelcomeComponentInit());
        settingsPage.listen(settingsBloc);
      }
    });
  }

  void _launchMainPage() {
    navigatePagesBloc.add(LaunchMainPage());
  }

  void _bindOnWindowCloseToBlocs(List<Bloc> blocs) {
    for (final bloc in blocs) {
      _stopListeningOnWindowClose(bloc);
    }
  }

  void _stopListeningOnWindowClose(Bloc bloc) {
    window.addEventListener('unload', (event) => bloc.close());
  }

  void _bindNavBarSwitches(
      {Function? mainSwitchFunction, Function? settingsSwitchFunction}) {
    final mainSwitch = document.querySelector('#main-page-switch');
    final settingsSwitch = document.querySelector('#settings-page-switch');

    if (mainSwitchFunction != null) {
      mainSwitch?.addEventListener('click', (event) {
        event.preventDefault();
        checkNavBarRadioButton(NavBarRadioButton.main);
        mainSwitchFunction();
      });
    }

    if (settingsSwitchFunction != null) {
      settingsSwitch?.addEventListener('click', (event) {
        event.preventDefault();
        checkNavBarRadioButton(NavBarRadioButton.settings);
        settingsSwitchFunction();
      });
    }
  }
}

void checkNavBarRadioButton(NavBarRadioButton navBarRadioButton) {
  final radioButtonSelector = 'input[type="radio"]';
  final mainRadioButton =
      document.querySelector('#main-page-switch > ' + radioButtonSelector)
          as RadioButtonInputElement;
  final settingsRadioButton =
      document.querySelector('#settings-page-switch > ' + radioButtonSelector)
          as RadioButtonInputElement;

  if (navBarRadioButton == NavBarRadioButton.main) {
    mainRadioButton.checked = true;
    settingsRadioButton.checked = false;
  }

  if (navBarRadioButton == NavBarRadioButton.settings) {
    mainRadioButton.checked = false;
    settingsRadioButton.checked = true;
  }
}
