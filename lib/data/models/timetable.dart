import 'lesson.dart';
import '../../core/entities/timetable.dart';

class TimetableModel extends Timetable {
  TimetableModel({required title, required linkTitle, required lessons})
      : super(title: title, linkTitle: linkTitle, lessons: lessons);

  factory TimetableModel.fromJson(Map<String, dynamic> json) {
    final String title = json['title'];
    final String linkTitle = json['linkTitle'];
    final lessonsJson = List<Map<String, dynamic>>.from(json['lessons']);
    final lessons =
        lessonsJson.map((element) => LessonModel.fromJson(element)).toList();

    return TimetableModel(title: title, linkTitle: linkTitle, lessons: lessons);
  }
}
