// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data_source/api/modules/data_source_api_modules.dart' as _i9;
import '../../data_source/api/user_api_data_source.dart' as _i8;
import '../../repositories/user_repository.dart' as _i7;
import '../../ui/global_state/user/user_global_state.dart' as _i6;
import '../../ui/routes/router_module.dart' as _i5;
import '../../ui/screens/splash/spash_controller.dart' as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get, {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dataSourceApiModules = _$DataSourceApiModules();
  gh.singleton<_i3.Dio>(dataSourceApiModules.dio);
  gh.lazySingleton<_i4.SplashController>(() => _i4.SplashController(router: get<_i5.ApplicationRouter>()));
  gh.singleton<String>(dataSourceApiModules.baseUrl, instanceName: 'BASE_URL');
  gh.lazySingleton<_i6.UserGlobalState>(() => _i6.UserGlobalStateConcrete());
  gh.lazySingleton<_i7.UserRepository>(() => _i7.UserRepositoryConcrete(dataSource: get<_i8.UserApiDataSource>()));
  return get;
}

class _$DataSourceApiModules extends _i9.DataSourceApiModules {}
