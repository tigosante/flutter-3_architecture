import 'package:flutter_architecture/main/dependecy_injection/dependency_injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final _getIt = GetIt.instance;

@InjectableInit(initializerName: r'$initGetIt')
GetIt _configureDependencies() => $initGetIt(_getIt);

mixin DependencyInjaction {
  static GetIt get instance => _getIt;
  static T get<T extends Object>({String? instanceName}) => instance.get<T>(instanceName: instanceName);

  static Future<void> clean() async => await instance.reset(dispose: true);

  static Future<void> startModules() async => _configureDependencies();
}
