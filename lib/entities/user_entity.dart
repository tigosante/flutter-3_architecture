import 'package:flutter_architecture/entities/email_entity.dart';
import 'package:flutter_architecture/entities/password_entity.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@CopyWith()
@JsonSerializable()
class UserEntity {
  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    this.password,
  });

  final String id;
  final String name;
  final EmailEntity email;
  final PasswordEntity? password;

  factory UserEntity.empty() => UserEntity(
        id: "",
        name: "",
        email: EmailEntity.empty(),
      );

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
