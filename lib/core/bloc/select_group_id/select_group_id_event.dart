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

part of 'select_group_id_bloc.dart';

@immutable
abstract class SelectGroupIdEvent {}

class SelectGroupIdInit extends SelectGroupIdEvent {}

class SelectGroupIdComponentLoad extends SelectGroupIdEvent {}

class SelectGroupIdComponentSelect extends SelectGroupIdEvent {
  SelectGroupIdComponentSelect(this.groupId);

  final String groupId;
}
