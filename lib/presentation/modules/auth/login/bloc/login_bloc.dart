import 'package:family_tree/presentation/base/state/navigate_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../base/bloc/base_bloc.dart';
import '../../../../route/routes.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LogInBloc extends BaseBloc<LogInEvent, LogInState> {
  LogInBloc() : super(LogInInitial()) {
    on<LogInEvent>((event, emit) async {});
    on<LogInScreenInit>((event, emit) async {});
    on<NavigateToSignupEvent>((event, emit) async {
      emit(NavigateToSignupState());
    });

  }
}
