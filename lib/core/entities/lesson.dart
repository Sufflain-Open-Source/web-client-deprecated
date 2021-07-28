/// Represents a lesson in a timetable.
/// 
/// [time] contains a lesson's time constraints formatted as following:
/// `hh:mm &ndash; hh:mm`
/// [data] contains a short info about a lesson: a teacher's name, an auditory etc.
class Lesson {
  final String time;
  final List<String> data;

  Lesson({required this.time, required this.data});
}
