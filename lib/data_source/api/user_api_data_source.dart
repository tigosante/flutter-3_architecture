import 'package:dio/dio.dart';
import 'package:flutter_architecture/data_source/api/data/user/user_create_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_architecture/data_source/api/data/user/user_create_request.dart';
import 'package:flutter_architecture/data_source/api/data/user/user_get_response.dart';

part 'user_api_data_source.g.dart';

mixin UserApiDataSource {
  Future<UserGetResponse?> get({required String email});
  Future<UserCreateResponse> create({required UserCreateRequest user});
}

class UserApiDataSourceConcrete extends _UserApiDataSourceConcreteInto implements UserApiDataSource {
  UserApiDataSourceConcrete(Dio dio) : super(dio);
}

@RestApi()
abstract class UserApiDataSourceConcreteInto implements UserApiDataSource {
  factory UserApiDataSourceConcreteInto(Dio dio, {String baseUrl}) = _UserApiDataSourceConcreteInto;

  @override
  @GET("/user/{email}")
  Future<UserGetResponse?> get({@Path("email") required String email});

  @override
  @POST("/user")
  Future<UserCreateResponse> create({@Body() required UserCreateRequest user});
}
