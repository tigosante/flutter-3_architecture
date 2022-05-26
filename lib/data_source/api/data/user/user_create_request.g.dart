// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCreateRequest _$UserCreateRequestFromJson(Map<String, dynamic> json) => UserCreateRequest(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      topic: json['specialty'] as String,
    );

Map<String, dynamic> _$UserCreateRequestToJson(UserCreateRequest instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'specialty': instance.topic,
    };
