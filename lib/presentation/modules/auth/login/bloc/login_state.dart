part of 'login_bloc.dart';

@immutable
abstract class LogInState {}

class LogInInitial extends LogInState {

}

class NavigateToSignupState extends NavigateState implements LogInState {
  NavigateToSignupState() : super(path: Routes.signup);
  @override
  List<Object?> get props => [DateTime.now()];
}



