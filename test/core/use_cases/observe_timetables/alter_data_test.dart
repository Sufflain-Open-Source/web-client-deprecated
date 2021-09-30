import 'package:test/test.dart';
import 'package:web_client/core/entities/timetable.dart';
import 'package:web_client/core/use_cases/observe_timetables/observe_timetables_bloc.dart';
import 'package:web_client/core/use_cases/observe_timetables/alter_data.dart';

void main() {
  test('should sort timetables by posting order', () {
    final firstTimetable =
        Timetable(order: 0, title: 'first', lessons: [], linkTitle: '');
    final secondTimetable =
        Timetable(order: 2, title: 'third', lessons: [], linkTitle: '');
    final thirdTimetable =
        Timetable(order: 1, title: 'second', lessons: [], linkTitle: '');

    final timetables = <Timetable>[
      thirdTimetable,
      firstTimetable,
      secondTimetable
    ];
    
    final timetablesSorted = <Timetable>[
      firstTimetable,
      thirdTimetable,
      secondTimetable
    ];

    expect(sortTimetablesByTimePosted(timetables), equals(timetablesSorted));
  });
}
