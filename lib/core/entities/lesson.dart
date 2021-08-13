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
