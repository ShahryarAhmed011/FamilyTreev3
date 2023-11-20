part of 'login_bloc.dart';

@immutable
abstract class LogInEvent {
  const LogInEvent();
}

class LogInScreenInit extends LogInEvent {
}


class NavigateToSignupEvent extends LogInEvent {
  const NavigateToSignupEvent();
}class NavigateToHomeStateEvent extends LogInEvent {
  const NavigateToHomeStateEvent();
}
