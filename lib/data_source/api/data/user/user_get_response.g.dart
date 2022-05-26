// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserGetResponse _$UserGetResponseFromJson(Map<String, dynamic> json) => UserGetResponse(
      name: json['name'] as String,
      email: json['email'] as String,
      uuid: json['uuid'] as String,
      topic: json['specialty'],
    );

Map<String, dynamic> _$UserGetResponseToJson(UserGetResponse instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'uuid': instance.uuid,
      'specialty': instance.topic,
    };
