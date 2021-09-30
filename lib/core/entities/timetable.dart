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

import 'package:equatable/equatable.dart';

import 'lesson.dart';

/// Represents a timetable.
///
/// [title] contains a timetable title with a group id.
/// [linkTitle] contains a text that will allow a user to locate a timetable and open it.
/// [order] contains a number that helps to identify which
/// timetable was added earlier than others.
class Timetable extends Equatable {
  Timetable(
      {required this.title,
      required this.linkTitle,
      required this.lessons,
      required this.order});

  final int order;
  final String title;
  final String linkTitle;
  final List<Lesson> lessons;

  @override
  List<Object?> get props => [title, linkTitle, lessons, order];
}
