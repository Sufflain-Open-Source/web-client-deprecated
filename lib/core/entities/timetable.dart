import 'package:equatable/equatable.dart';

import 'lesson.dart';

/// Represents a timetable.
/// 
/// [title] contains a timetable title with a group id.
/// [linkTitle] contains a text that will allow a user to locate a timetable and open it.
class Timetable extends Equatable {
  Timetable({required this.title, required this.linkTitle, required this.lessons});

  final String title;
  final String linkTitle;
  final List<Lesson> lessons;

  @override
  List<Object?> get props => [title, linkTitle, lessons];
}