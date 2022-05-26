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
    required this.uuid,
    required this.name,
    required this.email,
    this.password,
    this.imageUrl,
    this.subscriberId,
  });

  final String id;
  final String uuid;
  final String name;
  final EmailEntity email;
  final String? imageUrl;
  final PasswordEntity? password;
  final String? subscriberId;

  factory UserEntity.empty() => UserEntity(
        id: "",
        uuid: "",
        name: "",
        email: EmailEntity.empty(),
        subscriberId: "cus_asasas",
      );

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
