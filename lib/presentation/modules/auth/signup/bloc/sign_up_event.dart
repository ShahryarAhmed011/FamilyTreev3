part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {
  const SignUpEvent();
}

class SignUpScreenInit extends SignUpEvent {}