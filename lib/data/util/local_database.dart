import 'dart:html';

class LocalDatabase {
  static const _groupIdKey = 'groupId';
  final Storage _storage = window.localStorage;

  bool get isGroupSaved => _storage.containsKey(_groupIdKey);

  String get groupId => _storage[_groupIdKey] ?? '';

  set groupId(String gid) => _storage[_groupIdKey] = gid;
}
