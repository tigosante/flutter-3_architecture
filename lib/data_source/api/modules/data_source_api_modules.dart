import 'package:flutter_architecture/data_source/api/urls/api_urls.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataSourceApiModules {
  @Named(ApiUrls.baseUrlName)
  @singleton
  String get baseUrl => ApiUrls.baseUrlValue;

  @singleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: ApiUrls.baseUrlValue,
          headers: {'Accept': "application/json"},
        ),
      )..interceptors.add(
          InterceptorsWrapper(
            onRequest: (options, handler) {
              return handler.next(options);
            },
            onResponse: (response, handler) {
              return handler.next(response);
            },
            onError: (DioError e, handler) {
              return handler.next(e);
            },
          ),
        );
}
