import 'package:flutter_architecture/entities/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_create_request.g.dart';

@JsonSerializable()
class UserCreateRequest {
  UserCreateRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.topic,
  });

  final String name;
  final String email;
  final String password;

  @JsonKey(name: "specialty")
  final String topic;

  factory UserCreateRequest.fromEntity(UserEntity user, String topic) => UserCreateRequest(
        name: user.name,
        email: user.email.value,
        password: user.password?.value ?? "",
        topic: topic,
      );

  factory UserCreateRequest.fromJson(Map<String, dynamic> json) => _$UserCreateRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UserCreateRequestToJson(this);
}
