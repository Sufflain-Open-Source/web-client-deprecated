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

String makeSelector(
    {required String id,
    required List<String> elements,
    required bool firstOptionBlank}) {
  final optionsList = elements.map(_makeOptionElement);

  return '''<select name="$id" id="$id">
  ${_makeFirstOption(firstOptionBlank)}${optionsList.join()}
  </select>
  <div class="custom-arrow"></div>''';
}

String _makeFirstOption(bool firstBlank) =>
    firstBlank == true ? _makeOptionElement('') : '';

String _makeOptionElement(String value) =>
    '<option value="$value">$value</option>';
