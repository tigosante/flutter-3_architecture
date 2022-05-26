import 'package:flutter_architecture/entities/email_entity.dart';
import 'package:flutter_architecture/entities/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_get_response.g.dart';

@JsonSerializable()
class UserGetResponse {
  UserGetResponse({
    required this.id,
    required this.name,
    required this.email,
  });

  final String id;
  final String name;
  final String email;

  UserEntity toEntity() => UserEntity(id: "", name: name, email: EmailEntity(value: email));

  factory UserGetResponse.fromJson(Map<String, dynamic> json) => _$UserGetResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserGetResponseToJson(this);
}
