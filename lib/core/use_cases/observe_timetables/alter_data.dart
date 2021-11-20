import '../../entities/timetable.dart';

List<Timetable> sortTimetablesByTimePosted(
    List<Timetable> timetables, Map<String, int> timetablesOrder) {
  var timetablesSorted = timetables;
  timetables.sort((first, second) {
    final firstTimetableOrder = _getTimetableOrderByHash(first, timetablesOrder);
    final secondTimetableOrder = _getTimetableOrderByHash(second, timetablesOrder);

    return firstTimetableOrder.compareTo(secondTimetableOrder);
  });

  return timetablesSorted;
}

// If there's no data about the timetable, returns -1.
int _getTimetableOrderByHash(Timetable timetable, Map<String, int> timetablesOrder) {
  final hash = timetable.hash;

  return timetablesOrder.containsKey(hash) ? timetablesOrder[hash] as int : -1;
}