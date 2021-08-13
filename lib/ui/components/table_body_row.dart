/// Constructs a timetable row with a lesson's [info] and [time] constraints
void makeRow(String time, List<String> lessonInfo) => '''
<tr>
  <td>$time</td>
  <td>${lessonInfo.map((infoParagraph) => '<p>$infoParagraph</p>').toList().join()}</td>
</tr>
''';
