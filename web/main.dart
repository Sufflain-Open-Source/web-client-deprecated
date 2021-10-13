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

import 'package:firebase/firebase.dart';
import 'package:web_client/app/auth.dart';
import 'package:web_client/remote_database_config.dart' as config;
import 'package:web_client/app/app.dart';
import 'package:web_client/core/use_cases/navigate_pages/navigate_pages_bloc.dart';

void main() async {
  final App firebaseApp;
  final Authenticator authenticator;

  var errorMessageElement = '';

  firebaseApp = initializeApp(
      apiKey: config.apiKey,
      authDomain: config.authDomain,
      databaseURL: config.databaseURL,
      projectId: config.projectId,
      storageBucket: config.storageBucket);

  authenticator = Authenticator(firebaseApp);
  errorMessageElement = await authenticator.anonymousSignIn();

  if (errorMessageElement == '') {
    final navigatePagesBloc = NavigatePagesBloc();
    final initApp = InitializeApp(navigatePagesBloc);

    navigatePagesBloc.add(Init());
    initApp.listen();
  }

  if (errorMessageElement != '') {
    document.querySelector('#root')?.innerHtml = errorMessageElement;
  }
}
