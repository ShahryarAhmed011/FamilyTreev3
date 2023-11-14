part of 'splash_bloc.dart';

@immutable
abstract class SplashState {}

class SplashInitial extends SplashState {

}

class NavigateToHomeState extends NavigateState implements SplashState {
  NavigateToHomeState() : super(path: Routes.login);
  @override
  List<Object?> get props => [DateTime.now()];
}

class ProgressbarState implements SplashState {
  final bool isInProgress;
  const ProgressbarState({required this.isInProgress});
  @override
  List<Object?> get props => [DateTime.now()];
}



