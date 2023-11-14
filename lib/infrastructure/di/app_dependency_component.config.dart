// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:family_tree/data/data.dart' as _i23;
import 'package:family_tree/data/local/configuration/configuration_persistence.dart'
    as _i20;
import 'package:family_tree/data/repository/configuration/configuration_data_repository.dart'
    as _i21;
import 'package:family_tree/data/repository/configuration/configuration_data_source.dart'
    as _i19;
import 'package:family_tree/domain/configuration/get/get_configuration_use_case.dart'
    as _i22;
import 'package:family_tree/domain/domain.dart' as _i25;
import 'package:family_tree/infrastructure/config/network/authentication_interceptor.dart'
    as _i3;
import 'package:family_tree/infrastructure/config/network/fake_login_interceptor.dart'
    as _i6;
import 'package:family_tree/infrastructure/routing/app_router.dart' as _i18;
import 'package:family_tree/infrastructure/routing/providers/home_route_provider.dart'
    as _i7;
import 'package:family_tree/infrastructure/routing/providers/login_route_provider.dart'
    as _i9;
import 'package:family_tree/infrastructure/routing/providers/sign_up_route_provider.dart'
    as _i13;
import 'package:family_tree/infrastructure/routing/providers/splash_route_provider.dart'
    as _i15;
import 'package:family_tree/infrastructure/routing/route_factory.dart' as _i17;
import 'package:family_tree/infrastructure/routing/transition/default_transition.dart'
    as _i4;
import 'package:family_tree/infrastructure/routing/transition/login_transition.dart'
    as _i10;
import 'package:family_tree/infrastructure/routing/transition_factory.dart'
    as _i16;
import 'package:family_tree/presentation/modules/auth/login/bloc/login_bloc.dart'
    as _i8;
import 'package:family_tree/presentation/modules/auth/signup/bloc/sign_up_bloc.dart'
    as _i12;
import 'package:family_tree/presentation/modules/global/global_bloc.dart'
    as _i24;
import 'package:family_tree/presentation/modules/splash/bloc/splash_bloc.dart'
    as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import 'module/local_module.dart' as _i26;
import 'module/network_module.dart' as _i27;

const String _dev = 'dev';
const String _stage = 'stage';
const String _prod = 'prod';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    final localModule = _$LocalModule();
    gh.factory<_i3.AuthenticationInterceptor>(
        () => _i3.AuthenticationInterceptor());
    gh.factory<_i4.DefaultTransition>(() => _i4.DefaultTransition());
    gh.factory<_i5.Dio>(
      () => networkModule.provideDio(gh<_i3.AuthenticationInterceptor>()),
      instanceName: 'auth',
      registerFor: {
        _stage,
        _prod,
      },
    );
    gh.factory<_i5.Dio>(
      () => networkModule.provideChatDio(gh<_i3.AuthenticationInterceptor>()),
      instanceName: 'chat',
      registerFor: {
        _stage,
        _prod,
      },
    );
    gh.factory<_i6.FakeLoginInterceptor>(
      () => _i6.FakeLoginInterceptor(),
      registerFor: {_dev},
    );
    gh.factory<_i7.HomeRouteProvider>(() => _i7.HomeRouteProvider());
    gh.factory<_i8.LogInBloc>(() => _i8.LogInBloc());
    gh.factory<_i9.LogInRouteProvider>(() => _i9.LogInRouteProvider());
    gh.factory<_i10.LoginTransition>(() => _i10.LoginTransition());
    await gh.factoryAsync<_i11.SharedPreferences>(
      () => localModule.prefs,
      preResolve: true,
    );
    gh.factory<_i12.SignUpBloc>(() => _i12.SignUpBloc());
    gh.factory<_i13.SignUpRouteProvider>(() => _i13.SignUpRouteProvider());
    gh.factory<_i14.SplashBloc>(() => _i14.SplashBloc());
    gh.factory<_i15.SplashRouteProvider>(() => _i15.SplashRouteProvider());
    gh.factory<_i16.TransitionFactory>(() => _i16.TransitionFactory(
          loginTransition: gh<_i10.LoginTransition>(),
          defaultTransition: gh<_i4.DefaultTransition>(),
        ));
    gh.lazySingleton<_i17.AppRouteFactory>(() => _i17.AppRouteFactory(
          gh<_i9.LogInRouteProvider>(),
          gh<_i13.SignUpRouteProvider>(),
          splashRouteProvider: gh<_i15.SplashRouteProvider>(),
          transitionFactory: gh<_i16.TransitionFactory>(),
          homeRouteProvider: gh<_i7.HomeRouteProvider>(),
        ));
    gh.lazySingleton<_i18.AppRouter>(
        () => _i18.AppRouter(routeFactory: gh<_i17.AppRouteFactory>()));
    gh.factory<_i19.ConfigurationDataSource>(() =>
        _i20.ConfigurationPersistence(
            sharedPreferences: gh<_i11.SharedPreferences>()));
    gh.factory<_i21.ConfigurationRepository>(() => _i21.ConfigurationRepository(
        configurationDataSource: gh<_i19.ConfigurationDataSource>()));
    gh.factory<_i5.Dio>(
      () => networkModule.provideDevDio(
        gh<_i3.AuthenticationInterceptor>(),
        gh<_i6.FakeLoginInterceptor>(),
      ),
      instanceName: 'auth',
      registerFor: {_dev},
    );
    gh.factory<_i5.Dio>(
      () => networkModule.provideChatDevDio(
        gh<_i3.AuthenticationInterceptor>(),
        gh<_i6.FakeLoginInterceptor>(),
      ),
      instanceName: 'chat',
      registerFor: {_dev},
    );
    gh.factory<_i22.GetConfigurationUseCase>(() => _i22.GetConfigurationUseCase(
        configurationRepository: gh<_i23.ConfigurationRepository>()));
    gh.factory<_i24.GlobalBloc>(() => _i24.GlobalBloc(
        getConfigurationUseCase: gh<_i25.GetConfigurationUseCase>()));
    return this;
  }
}

class _$LocalModule extends _i26.LocalModule {}

class _$NetworkModule extends _i27.NetworkModule {}
