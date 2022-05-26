import 'package:flutter_architecture/data_source/api/user_api_data_source.dart';
import 'package:flutter_architecture/main/dependecy_injection/dependency_injection.config.dart';
import 'package:flutter_architecture/ui/routes/router_module.dart';
import 'package:flutter_architecture/use_cases/user/user_get_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final _getIt = GetIt.instance;
bool _isStarted = false;

@InjectableInit(initializerName: r'$initGetIt')
GetIt _configureDependencies() => $initGetIt(_getIt);

mixin DependencyInjaction {
  static bool _asyncIsFinished = false;
  static VoidCallback? _callbackAfterAsync;

  static GetIt get instance => _getIt;
  static T get<T extends Object>({String? instanceName}) => instance.get<T>(instanceName: instanceName);

  static Future<void> clean() async => await instance.reset(dispose: true);

  static Future<void> startModules() async {
    if (_isStarted) return;
    if (!instance.isRegistered<ApplicationRouter>()) {
      instance.registerLazySingleton<ApplicationRouter>(() => ApplicationRouter.instance());
    }

    instance.registerLazySingleton<UserApiDataSource>(() => UserApiDataSourceConcrete(instance.get()));

    instance.registerLazySingleton<UserGetUseCase>(() => UserGetUseCase(repository: instance.get()));

    _configureDependencies();
    _isStarted = true;
    _asyncIsFinished = true;
    _callbackAfterAsync?.call();
  }

  static void setCallBackAfterAsync(VoidCallback callback) {
    if (_asyncIsFinished) {
      callback.call();
      return;
    }
    _callbackAfterAsync = callback;
  }
}
