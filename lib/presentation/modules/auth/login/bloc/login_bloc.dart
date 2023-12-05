import 'dart:developer';

import 'package:family_tree/presentation/base/state/navigate_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../base/bloc/base_bloc.dart';
import '../../../../route/routes.dart';
import '../../../splash/bloc/splash_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LogInBloc extends BaseBloc<LogInEvent, LogInState> {
  static const String KEYLOGIN = "Login";
  LogInBloc() : super(LogInInitial()) {
    on<LogInEvent>((event, emit) async {});
    on<LogInScreenInit>((event, emit) async {});
    on<NavigateToSignupEvent>((event, emit) async {
      emit(NavigateToSignupState());
    });
    on<NavigateToHomeStateEvent>((event, emit) async {
      var sharepref = await SharedPreferences.getInstance();
      var isLoggedin = sharepref.getBool(KEYLOGIN);
      if (isLoggedin != null) {
        if (isLoggedin) {
          log("Time Stop Navigation");
          emit(NavigateToHomeState());
        } else {
          log("Time Stop Navigation");
          emit(NavigateToLoginState());
        }
      } else {
        log("Time Stop Navigation");
        emit(NavigateToLoginState());
      }
    });
  }
}
