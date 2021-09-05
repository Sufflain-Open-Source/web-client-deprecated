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

import 'package:web_client/app/init.dart';
import 'package:web_client/core/bloc/navigate_pages/navigate_pages_bloc.dart';

void main() {
  final navigatePagesBloc = NavigatePagesBloc();
  final initApp = InitializeApp(navigatePagesBloc);

  navigatePagesBloc.add(Init());
  initApp.listen();
}
