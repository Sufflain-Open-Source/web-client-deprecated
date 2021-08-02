part of 'welcome_bloc.dart';

@immutable
abstract class WelcomeState {}

class WelcomeComponentLoading extends WelcomeState {}

class WelcomeComponentLoaded extends WelcomeState {
  final List<String> groups;

  WelcomeComponentLoaded(this.groups);
}

// TODO implement error handling
class WelcomeComponentNotLoaded extends WelcomeState {}

class WelcomeComponentSelected extends WelcomeState {}
