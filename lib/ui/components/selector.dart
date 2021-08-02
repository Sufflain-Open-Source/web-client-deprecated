String makeSelector(String id, List<String> elements) {
  final optionsList = elements.map(_makeOptionElement);

  return '<select name="$id" id="$id">${_makeOptionElement('')}${optionsList.join()}</select>';
}

String _makeOptionElement(String value) =>
    '<option value="$value">$value</option>';
