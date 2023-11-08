import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import '../../../presentation/modules/home/bloc/home_bloc.dart';
import '../../../presentation/modules/home/home_screen.dart';
import '../route_screen_provider.dart';

@injectable
class HomeRouteProvider extends RouteScreenProvider<HomeBloc> {

  HomeRouteProvider();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) {
        final bloc = HomeBloc();
        return bloc;
      },
      child: const HomeScreen(
        key: ValueKey("home"),
      ),
    );
  }
}
