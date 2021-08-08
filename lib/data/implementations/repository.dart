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

  // @override
  // Stream<List<TimetableModel>> getTimetablesChangesStream(String groupId) =>
  //     _remoteDatabase.getTimetablesChangesStream(groupId);
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
  Future<List<String>> getGroups() => _remoteDatabase.getGroups();
}
