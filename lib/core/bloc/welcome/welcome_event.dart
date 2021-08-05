part of 'welcome_bloc.dart';

@immutable
abstract class WelcomeEvent {}

class WelcomeComponentInit extends WelcomeEvent {}

class WelcomeComponentLoad extends WelcomeEvent {}

class WelcomeComponentSelect extends WelcomeEvent {
  WelcomeComponentSelect(this.groupId);

  final String groupId;
}
