import '../../entities/timetable.dart';

List<Timetable> sortTimetablesByTimePosted(
    List<Timetable> timetables) {
  var timetablesSorted = timetables;
  timetables.sort((first, second) => first.order.compareTo(second.order));

  return timetablesSorted;
}
