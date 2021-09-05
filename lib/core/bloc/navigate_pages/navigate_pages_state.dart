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

part of 'navigate_pages_bloc.dart';

abstract class NavigatePagesState {}

class NavigatePagesInitial extends NavigatePagesState {}

class NavBarSwitchesBinded extends NavigatePagesState {}

class GroupIdPresenceChecked extends NavigatePagesState {
  GroupIdPresenceChecked(this.isGroupStoredLocally);

  final bool isGroupStoredLocally;
}

class WelcomePageLaunched extends NavigatePagesState {}

class MainPageLaunched extends NavigatePagesState {}

class SettingsPageLaunched extends NavigatePagesState {}
