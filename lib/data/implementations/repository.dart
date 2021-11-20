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

import 'package:web_client/core/entities/timetable.dart';

import '../models/timetable.dart';
import '../../core/contracts/local_database_contract.dart';
import '../../core/contracts/remote_database_contract.dart';
import '../../core/contracts/repository_contract.dart';
import '../util/local_database.dart';
import '../util/remote_database.dart';

class Repository implements RepositoryContract {
  Repository._() {
    _localDatabase = LocalDatabase();
    _remoteDatabase = RemoteDatabase();
  }

  static Repository? _instance;

  late final LocalDatabaseContract _localDatabase;
  late final RemoteDatabaseContract _remoteDatabase;

  static Repository get instance => _instance ??= Repository._();

  @override
  Future<List<Timetable>> getTimetables(String groupId) =>
      _remoteDatabase.getTimetables(groupId);

  @override
  bool get isGroupSaved => _localDatabase.isGroupSaved;

  @override
  String get groupId => _localDatabase.groupId;

  @override
  set groupId(String groupId) => _localDatabase.groupId = groupId;

  @override 
  void clearGroupId() => _localDatabase.clearGroupId();

  @override
  Future<List<String>> getGroups() => _remoteDatabase.getGroups();

  @override
  Future<Map<String, int>> getTimetablesOrder() => _remoteDatabase.getTimetablesOrder();
}
