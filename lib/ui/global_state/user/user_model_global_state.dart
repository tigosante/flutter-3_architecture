import 'package:flutter_architecture/entities/email_entity.dart';
import 'package:flutter_architecture/entities/password_entity.dart';
import 'package:flutter_architecture/entities/user_entity.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model_global_state.g.dart';

@CopyWith()
@JsonSerializable()
class UserModelGlobalState {
  UserModelGlobalState({
    required this.id,
    required this.uuid,
    required this.name,
    required this.email,
    this.password,
  });

  String id;
  String uuid;
  String name;
  EmailEntity email;
  PasswordEntity? password;

  factory UserModelGlobalState.empty() => UserModelGlobalState(
        id: "",
        uuid: "",
        name: "",
        email: EmailEntity.empty(),
      );

  factory UserModelGlobalState.fromJson(Map<String, dynamic> json) => _$UserModelGlobalStateFromJson(json);
  factory UserModelGlobalState.fromEntity(UserEntity user) => UserModelGlobalState(
        id: user.id,
        uuid: user.uuid,
        name: user.name,
        email: user.email,
      );

  Map<String, dynamic> toJson() => _$UserModelGlobalStateToJson(this);
  UserEntity toEntity() => UserEntity(id: id, uuid: uuid, name: name, email: email);
}
