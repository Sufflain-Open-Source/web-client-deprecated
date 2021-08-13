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
