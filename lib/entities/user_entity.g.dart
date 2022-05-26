// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserEntityCWProxy {
  UserEntity email(EmailEntity email);

  UserEntity id(String id);

  UserEntity imageUrl(String? imageUrl);

  UserEntity name(String name);

  UserEntity password(PasswordEntity? password);

  UserEntity subscriberId(String? subscriberId);

  UserEntity uuid(String uuid);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  UserEntity call({
    EmailEntity? email,
    String? id,
    String? imageUrl,
    String? name,
    PasswordEntity? password,
    String? subscriberId,
    String? uuid,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserEntity.copyWith.fieldName(...)`
class _$UserEntityCWProxyImpl implements _$UserEntityCWProxy {
  final UserEntity _value;

  const _$UserEntityCWProxyImpl(this._value);

  @override
  UserEntity email(EmailEntity email) => this(email: email);

  @override
  UserEntity id(String id) => this(id: id);

  @override
  UserEntity imageUrl(String? imageUrl) => this(imageUrl: imageUrl);

  @override
  UserEntity name(String name) => this(name: name);

  @override
  UserEntity password(PasswordEntity? password) => this(password: password);

  @override
  UserEntity subscriberId(String? subscriberId) => this(subscriberId: subscriberId);

  @override
  UserEntity uuid(String uuid) => this(uuid: uuid);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  UserEntity call({
    Object? email = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? subscriberId = const $CopyWithPlaceholder(),
    Object? uuid = const $CopyWithPlaceholder(),
  }) {
    return UserEntity(
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as EmailEntity,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String?,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as PasswordEntity?,
      subscriberId: subscriberId == const $CopyWithPlaceholder()
          ? _value.subscriberId
          // ignore: cast_nullable_to_non_nullable
          : subscriberId as String?,
      uuid: uuid == const $CopyWithPlaceholder() || uuid == null
          ? _value.uuid
          // ignore: cast_nullable_to_non_nullable
          : uuid as String,
    );
  }
}

extension $UserEntityCopyWith on UserEntity {
  /// Returns a callable class that can be used as follows: `instanceOfUserEntity.copyWith(...)` or like so:`instanceOfUserEntity.copyWith.fieldName(...)`.
  _$UserEntityCWProxy get copyWith => _$UserEntityCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      email: EmailEntity.fromJson(json['email'] as Map<String, dynamic>),
      password: json['password'] == null ? null : PasswordEntity.fromJson(json['password'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String?,
      subscriberId: json['subscriberId'] as String?,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
      'password': instance.password,
      'subscriberId': instance.subscriberId,
    };
