import '../../core/contracts/local_database_contract.dart';

import 'dart:html';

class LocalDatabase implements LocalDatabaseContract {
  static const _groupIdKey = 'groupId';
  final Storage _storage = window.localStorage;

  @override
  bool get isGroupSaved => _storage.containsKey(_groupIdKey);

  @override
  String get groupId => _storage[_groupIdKey] ?? '';

  @override
  set groupId(String gid) => _storage[_groupIdKey] = gid;
}
