part of 'welcome_bloc.dart';

@immutable
abstract class WelcomeState {}

class WelcomeComponentLoading extends WelcomeState {}

class WelcomeComponentLoaded extends WelcomeState {
  WelcomeComponentLoaded(this.groups);
  
  final List<String> groups;
}

// TODO implement error handling
class WelcomeComponentNotLoaded extends WelcomeState {}

class WelcomeComponentSelected extends WelcomeState {}
