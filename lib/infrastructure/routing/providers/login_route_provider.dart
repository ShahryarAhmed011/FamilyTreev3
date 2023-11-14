import 'package:family_tree/presentation/modules/auth/login/bloc/login_bloc.dart';
import 'package:family_tree/presentation/modules/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import '../nested_route_screen_provider.dart';

@injectable
class LogInRouteProvider extends NestedRouteScreenProvider<LogInBloc> {
  LogInRouteProvider();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
        create: (context) {
          final bloc = LogInBloc();
          // bloc.updateExtra(state.extra);
          return bloc;
        },
        child: const LogInScreen());
  }
}
