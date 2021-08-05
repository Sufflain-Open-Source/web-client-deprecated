import '../../core/entities/lesson.dart';

class LessonModel extends Lesson {
  LessonModel({required String time, required List<String> data})
      : super(time: time, data: data);

  factory LessonModel.fromJson(Map<String, dynamic> json) {
    final String time = json['time'];
    final List<String> data = json['data'].cast<String>();

    return LessonModel(time: time, data: data);
  }
}
