import 'lesson.dart';

/// Represents a timetable.
/// 
/// [title] contains a timetable title with a group id.
/// [linkTitle] contains a text that will allow a user to locate a timetable and open it.
class Timetable {
  final String title;
  final String linkTitle;
  final List<Lesson> lessons;

  Timetable({required this.title, required this.linkTitle, required this.lessons});
}