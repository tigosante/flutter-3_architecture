// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCreateResponse _$UserCreateResponseFromJson(Map<String, dynamic> json) =>
    UserCreateResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserCreateResponseToJson(UserCreateResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
