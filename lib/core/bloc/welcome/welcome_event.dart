part of 'welcome_bloc.dart';

@immutable
abstract class WelcomeEvent {}

class WelcomeComponentInit extends WelcomeEvent {}

class WelcomeComponentLoad extends WelcomeEvent {}

class WelcomeComponentSelect extends WelcomeEvent {
  final String groupId;

  WelcomeComponentSelect(this.groupId);
}
