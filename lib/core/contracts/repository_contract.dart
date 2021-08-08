import '../entities/timetable.dart';

abstract class RepositoryContract {
  // Stream<List<TimetableModel>> getTimetablesChangesStream(String groupId);
  Future<List<Timetable>> getTimetables(String groupId);

  bool get isGroupSaved;

  String get groupId;

  set groupId(String groupId);

  Future<List<String>> getGroups();
}
