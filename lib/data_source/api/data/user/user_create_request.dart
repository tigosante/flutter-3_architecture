import 'package:flutter_architecture/entities/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_create_request.g.dart';

@JsonSerializable()
class UserCreateRequest {
  UserCreateRequest({
    required this.name,
    required this.email,
    required this.password,
  });

  final String name;
  final String email;
  final String password;

  factory UserCreateRequest.fromEntity(UserEntity user, String topic) => UserCreateRequest(
        name: user.name,
        email: user.email.value,
        password: user.password?.value ?? "",
      );

  factory UserCreateRequest.fromJson(Map<String, dynamic> json) => _$UserCreateRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UserCreateRequestToJson(this);
}
