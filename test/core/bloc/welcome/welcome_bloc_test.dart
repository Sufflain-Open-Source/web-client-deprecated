import 'package:web_client/core/bloc/welcome/welcome_bloc.dart';
import 'package:web_client/core/contracts/repository_contract.dart';
import 'welcome_bloc_test.mocks.dart';

import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([RepositoryContract])
void main() {
  final repoMock = MockRepositoryContract();
  final welcomeBloc = WelcomeBloc(repoMock);

  test('initial state should be [WelcomeComponentLoading]', () {
    welcomeBloc.stream.listen((state) {
      expect(state, isA<WelcomeComponentLoading>());
    }).cancel();
  });

  group('getGroups', () {
    when(repoMock.getGroups())
        .thenAnswer((invocation) => Future(() => <String>['group1']));
    when(repoMock.groupId).thenReturn('test-group');

    test('should return [WelcomeComponentLoaded(groups)] on [WelcomeComponentLoad]',
        () {
      welcomeBloc.add(WelcomeComponentLoad());

      welcomeBloc.stream.listen((state) {
        expect(state, isA<WelcomeComponentLoaded>());
        expect((state as WelcomeComponentLoaded).groups[0], 'group1');
      }).cancel();
    });

    test(
        'should return [WelcomeComponentSelected] on [WelcomeComponentSelect(group)]',
        () {
      welcomeBloc.add(WelcomeComponentSelect('test-group'));

      welcomeBloc.stream.listen((state) {
        expect(state, isA<WelcomeComponentSelected>());
      }).cancel();
    });
  });
}
