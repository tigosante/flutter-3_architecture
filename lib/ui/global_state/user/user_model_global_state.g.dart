// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_global_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserModelGlobalStateCWProxy {
  UserModelGlobalState email(EmailEntity email);

  UserModelGlobalState id(String id);

  UserModelGlobalState name(String name);

  UserModelGlobalState password(PasswordEntity? password);

  UserModelGlobalState uuid(String uuid);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModelGlobalState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModelGlobalState(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModelGlobalState call({
    EmailEntity? email,
    String? id,
    String? name,
    PasswordEntity? password,
    String? uuid,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserModelGlobalState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserModelGlobalState.copyWith.fieldName(...)`
class _$UserModelGlobalStateCWProxyImpl implements _$UserModelGlobalStateCWProxy {
  final UserModelGlobalState _value;

  const _$UserModelGlobalStateCWProxyImpl(this._value);

  @override
  UserModelGlobalState email(EmailEntity email) => this(email: email);

  @override
  UserModelGlobalState id(String id) => this(id: id);

  @override
  UserModelGlobalState name(String name) => this(name: name);

  @override
  UserModelGlobalState password(PasswordEntity? password) => this(password: password);

  @override
  UserModelGlobalState uuid(String uuid) => this(uuid: uuid);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModelGlobalState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModelGlobalState(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModelGlobalState call({
    Object? email = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? uuid = const $CopyWithPlaceholder(),
  }) {
    return UserModelGlobalState(
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as EmailEntity,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as PasswordEntity?,
      uuid: uuid == const $CopyWithPlaceholder() || uuid == null
          ? _value.uuid
          // ignore: cast_nullable_to_non_nullable
          : uuid as String,
    );
  }
}

extension $UserModelGlobalStateCopyWith on UserModelGlobalState {
  /// Returns a callable class that can be used as follows: `instanceOfUserModelGlobalState.copyWith(...)` or like so:`instanceOfUserModelGlobalState.copyWith.fieldName(...)`.
  _$UserModelGlobalStateCWProxy get copyWith => _$UserModelGlobalStateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModelGlobalState _$UserModelGlobalStateFromJson(Map<String, dynamic> json) => UserModelGlobalState(
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      email: EmailEntity.fromJson(json['email'] as Map<String, dynamic>),
      password: json['password'] == null ? null : PasswordEntity.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelGlobalStateToJson(UserModelGlobalState instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
