import '../../core/contracts/repository_contract.dart';
import '../util/local_database.dart';

class Repository implements RepositoryContract {
  final _localDatabase = LocalDatabase();

  @override
  bool get isGroupSaved => _localDatabase.isGroupSaved;

  @override
  String get groupId => _localDatabase.groupId;

  @override
  set groupId(String groupId) => _localDatabase.groupId = groupId;
}
