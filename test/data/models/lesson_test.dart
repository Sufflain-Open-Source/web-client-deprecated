import '../../fixtures/reader.dart';
import 'package:test/test.dart';

import 'package:web_client/data/models/lesson.dart';

import 'dart:convert';

void main() {
  test(
      'factory [LessonModel.fromJson] should create a new object with data from JSON',
      () {
    final lessonJsonString = readFixture('lesson.json');
    final lessonJson = JsonDecoder().convert(lessonJsonString);
    final lessonModel = LessonModel.fromJson(lessonJson);
    final exampleLessonModel = LessonModel(
        time: '09.00 &ndash; 10.30',
        data: ['Предмет', 'ФИО преподавателя', 'Ауд.']);

    expect(lessonModel, equals(exampleLessonModel));
    expect(lessonModel, equals(exampleLessonModel));
  });
}
