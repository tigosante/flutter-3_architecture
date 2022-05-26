import 'package:flutter_architecture/entities/email_entity.dart';
import 'package:flutter_architecture/entities/user_entity.dart';
import 'package:flutter_architecture/repositories/user_repository.dart';

class UserGetUseCase {
  UserGetUseCase({
    required UserRepository repository,
  }) : _repository = repository;

  final UserRepository _repository;

  Future<UserEntity> call(EmailEntity email) async => await _repository.get(email.value);
}
