import 'package:flutter_architecture/data_source/api/data/user/user_create_request.dart';
import 'package:flutter_architecture/data_source/api/user_api_data_source.dart';
import 'package:flutter_architecture/entities/user_entity.dart';
import 'package:flutter_architecture/main/exceptions/not_found_exception.dart';
import 'package:injectable/injectable.dart';

mixin UserRepository {
  Future<UserEntity> get(String email);
  Future<UserEntity> create(UserEntity user);
}

@LazySingleton(as: UserRepository)
class UserRepositoryConcrete implements UserRepository {
  UserRepositoryConcrete({
    required UserApiDataSource dataSource,
  }) : _dataSource = dataSource;

  final UserApiDataSource _dataSource;

  @override
  Future<UserEntity> get(String email) async {
    final user = await _dataSource.get(email: email);
    if (user == null) throw NotFoundException<UserEntity>();
    return user.toEntity();
  }

  @override
  // TODO: mapear exception
  Future<UserEntity> create(UserEntity user) async {
    await _dataSource.create(user: UserCreateRequest.fromEntity(user, ""));
    return user;
  }
}
