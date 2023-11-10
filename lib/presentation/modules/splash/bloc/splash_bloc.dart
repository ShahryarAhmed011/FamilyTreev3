import 'dart:developer';

import 'package:family_tree/presentation/route/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../base/bloc/base_bloc.dart';
import '../../../base/state/replace_state.dart';

part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends BaseBloc<SplashEvent, SplashState> {

  SplashBloc():super(SplashInitial()) {
    on<SplashEvent>((event, emit) async {});

    on<SplashScreenInit>((event, emit) async  {
      log("Time Start Navigation");
       await Future.delayed(const Duration(seconds: 5));
      log("Time Stop Navigation");
      emit(NavigateToHomeState());
    });
  }
}
