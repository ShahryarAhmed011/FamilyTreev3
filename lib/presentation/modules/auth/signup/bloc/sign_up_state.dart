part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class NavigateToLoginState extends NavigateState implements SignUpState {
  NavigateToLoginState() : super(path: Routes.login);
  @override
  List<Object?> get props => [DateTime.now()];
}