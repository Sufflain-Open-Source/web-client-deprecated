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

import 'dart:html';

const backButtonId = 'back-button';

/// Hides all child elements of the header and shows a back button.
void showBackButton() {
  _toggleHeaderElementsVisibility(shouldHideBackButton: false);
}

/// Hides the back button and show header child elements.
void hideBackButton() {
  _toggleHeaderElementsVisibility(shouldHideBackButton: true);
}

void _toggleHeaderElementsVisibility({required bool shouldHideBackButton}) {
  final headerElementsWithoutButton =
      document.querySelectorAll('header > :not(#back-button)');
  final backButton = document.querySelector('#back-button');

  headerElementsWithoutButton.forEach((element) {
    element.hidden = shouldHideBackButton == true ? false : true;
  });

  backButton?.hidden = shouldHideBackButton == true ? true : false;
}
