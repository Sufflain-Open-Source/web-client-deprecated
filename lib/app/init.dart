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

class InitializeApp {
  InitializeApp(this.navigatePagesBloc);

  final NavigatePagesBloc navigatePagesBloc;
  final welcomeBloc = WelcomeBloc(Repository.instance);
  final mainBloc = ObserveTimetablesBloc(Repository.instance);
  final settingsBloc = WelcomeBloc(Repository.instance);

  void listen() {
    navigatePagesBloc.stream.listen((state) {
      var isGroupStoredLocally = false;

      Function launchMainPage = () {
        _launchPage(navigatePagesBloc, LaunchMainPage());
      };

      if (state is NavigatePagesInitial) {
        _bindOnWindowCloseToBlocs(
            [navigatePagesBloc, welcomeBloc, mainBloc, settingsBloc]);
        _bindNavBarSwitches(
            mainSwitchFunction: launchMainPage,
            settingsSwitchFunction: () {
              _launchPage(navigatePagesBloc, LaunchSettingsPage());
            });

        navigatePagesBloc.add(BindNavBarSwitchesToPages());
      }

      if (state is NavBarSwitchesBinded) {
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
        final welcomePage = WelcomePage(launchMainPage);

        welcomeBloc.add(WelcomeComponentInit());
        welcomePage.listen(welcomeBloc);
      }

      if (state is MainPageLaunched) {
        final mainPage = MainPage();
        final navBar = document.querySelector('nav');

        navBar?.hidden = false;

        mainBloc.add(ObserveTimetablesInit());
        mainPage.listen(mainBloc);
      }

      if (state is SettingsPageLaunched) {
        final settingsPage = SettingsPage();

        settingsBloc.add(WelcomeComponentInit());
        settingsPage.listen(settingsBloc);
      }
    });
  }

  void _launchPage(Bloc bloc, NavigatePagesEvent launchEvent) {
    bloc.add(launchEvent);
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

    print(mainSwitch?.id);
    print(settingsSwitch?.id);

    if (mainSwitchFunction != null) {
      mainSwitch?.addEventListener('click', (event) {
        mainSwitchFunction();
      });
    }

    if (settingsSwitchFunction != null) {
      settingsSwitch?.addEventListener('click', (event) {
        settingsSwitchFunction();
      });
    }
  }
}
