/*
    Copyright (C) 2021  Timofey Chuchkanov

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

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
