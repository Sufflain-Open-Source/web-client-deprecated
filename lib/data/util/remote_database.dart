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

  // @override
  // Stream<List<TimetableModel>> getTimetablesChangesStream(String groupId) {
  //   final queryEventStream = _getDataChangesStream(groupId);
  //   return RemoteDatabase._timetablesChangesAsStream(queryEventStream);
  // }

  // static Stream<List<TimetableModel>> _timetablesChangesAsStream(
  //     Stream<QueryEvent> dataStream) async* {
  //   await for (final event in dataStream) {
  //     final snapshot = event.snapshot;
  //     final List<Map<String, dynamic>> timetablesJson = snapshot.val();

  //     yield timetablesJson
  //         .map((element) => TimetableModel.fromJson(element))
  //         .toList();
  //   }
  // }

  @override
  Future<List<Timetable>> getTimetables(String groupId) async {
    final timetablesReference = _realtimeDatabase.ref(config.timetablesNodeName);
    final timetablesJson = await timetablesReference
        .once('value')
        .then(getSnapshotValue) as List<Map<String, dynamic>>;

    return timetablesJson.map((e) => TimetableModel.fromJson(e)).toList();
  }

  @override
  Future<List<String>> getGroups() async {
    final groupsReference = _realtimeDatabase.ref(config.groupsNodeName);
    final groups = await groupsReference.once('value').then(getSnapshotValue);

    return groups == null ? <String>[] : List<String>.from(groups);
  }

  Future<dynamic> getSnapshotValue(QueryEvent event) => event.snapshot.val();

  /// Get a reference of the timetables for a specific [groupId] and listen for data changes
  // Stream<QueryEvent> _getDataChangesStream(String groupId) =>
  //     _realtimeDatabase.ref('t').child(groupId).onValue;
}
