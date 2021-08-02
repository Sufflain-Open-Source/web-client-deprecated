import '../../core/contracts/remote_database_contract.dart';
import '../../remote_database_config.dart' as config;

import 'package:firebase/firebase.dart';

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
  Future<List<String>> getGroups() async {
    final groupsReference = _realtimeDatabase.ref(config.groupsNodeName);
    final groups = await groupsReference.once('value').then((event) {
      final snapshot = event.snapshot;
      final result = snapshot.val();

      return result == null ? <String>[] : List<String>.from(result);
    });

    return groups;
  }
}
