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

import 'package:web_client/data/models/timetable.dart';

import '../../core/entities/timetable.dart';
import '../../core/contracts/remote_database_contract.dart';
import '../../remote_database_config.dart' as config;

import 'package:firebase/firebase.dart';
import 'dart:async';

class RemoteDatabase implements RemoteDatabaseContract {
  RemoteDatabase([Database? db]) {
    initializeApp(
        apiKey: config.apiKey,
        authDomain: config.authDomain,
        databaseURL: config.databaseURL,
        projectId: config.projectId,
        storageBucket: config.storageBucket);

    _realtimeDatabase = db ?? database();
  }

  late final Database _realtimeDatabase;

  @override
  Future<List<Timetable>> getTimetables(String groupId) async {
    final timetablesReference = _realtimeDatabase.ref(config.timetablesNodeName).child(groupId);
    final timetablesJson = await timetablesReference
        .once('value')
        .then((event) => event.snapshot.val()) as Map<String, dynamic>;

    if (timetablesJson.isEmpty) {
      return [];
    }

    final timetablesJsonValues = timetablesJson.values.toList();

    return timetablesJsonValues.map((value) => TimetableModel.fromJson(value)).toList();
  }

  @override
  Future<List<String>> getGroups() async {
    final groupsReference = _realtimeDatabase.ref(config.groupsNodeName);
    final groups = await groupsReference.once('value').then((event) => event.snapshot.val());

    return groups == null ? <String>[] : List<String>.from(groups);
  }

  /// Get a reference of the timetables for a specific [groupId] and listen for data changes
  // Stream<QueryEvent> _getDataChangesStream(String groupId) =>
  //     _realtimeDatabase.ref('t').child(groupId).onValue;
}
