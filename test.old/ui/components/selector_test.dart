import 'package:web_client/ui/components/selector.dart';

import 'package:test/test.dart';

void main() {
  test('must be a proper <select /> element with two options', () {
    final selector = makeSelector('my-selector', ['first', 'second']);
    final expectedString = '<select name="my-selector" id="my-selector">' +
        '<option value=""></option>' +
        '<option value="first">first</option><option value="second">second</option></select>';

    expect(selector, expectedString);
  });
}
