
import 'package:family_tree/presentation/modules/auth/signup/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/preferences/preferences_use_case.dart';
import '../../../presentation/modules/auth/signup/bloc/sign_up_bloc.dart';
import '../nested_route_screen_provider.dart';

@injectable
class SignUpRouteProvider extends NestedRouteScreenProvider<SignUpBloc> {

  final StoreUserNamePreferencesUseCase _storeUserNamePreferencesUseCase;

  SignUpRouteProvider({required StoreUserNamePreferencesUseCase storeUserNamePreferencesUseCase}):
        _storeUserNamePreferencesUseCase = storeUserNamePreferencesUseCase;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
        create: (context) {
          final bloc = SignUpBloc(storeUserNamePreferencesUseCase: _storeUserNamePreferencesUseCase);
          // bloc.updateExtra(state.extra);
          return bloc;
        },
        child: const SignUpScreen());
  }
}
