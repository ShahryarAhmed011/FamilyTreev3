import 'dart:developer';

import 'package:family_tree/presentation/base/state/navigate_state.dart';
import 'package:family_tree/presentation/route/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../base/bloc/base_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends BaseBloc<SplashEvent, SplashState> {
  static const String KEYLOGIN = "Login";
  SplashBloc():super(SplashInitial()) {
    on<SplashEvent>((event, emit) async {});

    on<SplashScreenInit>((event, emit) async  {
      var sharepref = await SharedPreferences.getInstance();
      var isLoggedin = sharepref.getBool(KEYLOGIN);
      if (isLoggedin!= null){
        if(isLoggedin){
          log("Time Start Navigation");
          emit(const ProgressbarState(isInProgress: true));
          await Future.delayed(const Duration(seconds: 5),(){
            emit(const ProgressbarState(isInProgress: false));
          });
          log("Time Stop Navigation");
          emit(NavigateToHomeState());
        }else {
          log("Time Start Navigation");
          emit(const ProgressbarState(isInProgress: true));
          await Future.delayed(const Duration(seconds: 5),(){
            emit(const ProgressbarState(isInProgress: false));
          });
          log("Time Stop Navigation");
          emit(NavigateToLoginState());
        }
      }else{
        log("Time Start Navigation");
        emit(const ProgressbarState(isInProgress: true));
        await Future.delayed(const Duration(seconds: 5),(){
          emit(const ProgressbarState(isInProgress: false));
        });
        log("Time Stop Navigation");
        emit(NavigateToLoginState());
      }

      log("Time Start Navigation");
      emit(const ProgressbarState(isInProgress: true));
       await Future.delayed(const Duration(seconds: 5),(){
         emit(const ProgressbarState(isInProgress: false));
       });

    });
  }
}
