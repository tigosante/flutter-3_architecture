import 'package:flutter_architecture/entities/email_entity.dart';
import 'package:flutter_architecture/entities/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_get_response.g.dart';

@JsonSerializable()
class UserGetResponse {
  UserGetResponse({
    required this.name,
    required this.email,
    required this.uuid,
    required this.topic,
  });

  final String name;
  final String email;
  final String uuid;

  @JsonKey(name: "specialty")
  final dynamic topic;

  factory UserGetResponse.empty() => UserGetResponse(
        uuid: "123",
        name: "123",
        email: EmailEntity.valueEmpty,
        topic: "",
      );

  UserEntity toEntity() => UserEntity(id: "", uuid: uuid, name: name, email: EmailEntity(value: email));

  factory UserGetResponse.fromJson(Map<String, dynamic> json) => _$UserGetResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserGetResponseToJson(this);
}
