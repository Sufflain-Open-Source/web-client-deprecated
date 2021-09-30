import 'dart:convert';

import 'package:web_client/data/models/lesson.dart';
import 'package:web_client/data/models/timetable.dart';
import 'package:test/test.dart';

import '../../fixtures/reader.dart';

void main() {
  test(
      'factory [TimetableModel.fromJson] should create a new object with data from JSON',
      () {
    final timetableJsonString = readFixture('timetable.json');
    final timetableJson = JsonDecoder().convert(timetableJsonString);
    final timetableModel = TimetableModel.fromJson(timetableJson);
    final exampleTimetableModel = TimetableModel(
        order: 0,
        title: 'Б11-20 ауд.501',
        linkTitle: 'Расписание занятий на 27 апреля 2021 года',
        lessons: [
          LessonModel(
              time: '09.00 &ndash; 10.30',
              data: ['Иностранный язык', 'ФИО преподавателя', 'Ауд.']),
          LessonModel(
              time: '11.00 &ndash; 12.30',
              data: ['Человек и общество', 'ФИО преподавателя', 'Ауд.']),
          LessonModel(
              time: '12.50 &ndash; 14.20',
              data: ['Математика', 'ФИО преподавателя', 'Ауд.']),
          LessonModel(
              time: '14.30 &ndash; 16.00',
              data: ['Экономика', 'ФИО преподавателя', 'Ауд.'])
        ]);

    expect(timetableModel, equals(exampleTimetableModel));
    expect(timetableModel, equals(exampleTimetableModel));
    expect(timetableModel, equals(exampleTimetableModel));
  });
}
