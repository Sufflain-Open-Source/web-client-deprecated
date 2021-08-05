import 'package:equatable/equatable.dart';

/// Represents a lesson in a timetable.
///
/// [time] contains a lesson's time constraints formatted as following:
/// `hh:mm &ndash; hh:mm`
/// [data] contains a short info about a lesson: a teacher's name, an auditory etc.
class Lesson extends Equatable {
  Lesson({required this.time, required this.data});

  final String time;
  final List<String> data;

  @override
  List<Object?> get props => [time, data];
}
