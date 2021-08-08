import '../entities/timetable.dart';

abstract class RemoteDatabaseContract {
  Future<List<String>> getGroups();
  Future<List<Timetable>> getTimetables(String groupId);
  // Stream<List<TimetableModel>> getTimetablesChangesStream(String groupId);
}
