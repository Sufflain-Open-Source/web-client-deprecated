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

import '../../core/contracts/local_database_contract.dart';

import 'dart:html';

class LocalDatabase implements LocalDatabaseContract {
  static const _groupIdKey = 'groupId';
  final Storage _storage = window.localStorage;

  @override
  bool get isGroupSaved => _storage.containsKey(_groupIdKey) && _storage[_groupIdKey] != '';

  @override
  String get groupId => _storage[_groupIdKey] ?? '';

  @override
  void clearGroupId() {
    _storage.remove(_groupIdKey);
  }

  @override
  set groupId(String gid) => _storage[_groupIdKey] = gid;
}
