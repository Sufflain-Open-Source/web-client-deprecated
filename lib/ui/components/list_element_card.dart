const cardClassName = 'card';
const cardTitleClassName = 'card-title';

String makeCard(String id, String title) {
  return '''
    <div id="$id" class="$cardClassName">
      <p class="$cardTitleClassName">$title</p>
    </div>
    ''';
}
