// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EmailEntityCWProxy {
  EmailEntity value(String value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EmailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EmailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EmailEntity call({
    String? value,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEmailEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEmailEntity.copyWith.fieldName(...)`
class _$EmailEntityCWProxyImpl implements _$EmailEntityCWProxy {
  final EmailEntity _value;

  const _$EmailEntityCWProxyImpl(this._value);

  @override
  EmailEntity value(String value) => this(value: value);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EmailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EmailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EmailEntity call({
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return EmailEntity(
      value: value == const $CopyWithPlaceholder() || value == null
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String,
    );
  }
}

extension $EmailEntityCopyWith on EmailEntity {
  /// Returns a callable class that can be used as follows: `instanceOfEmailEntity.copyWith(...)` or like so:`instanceOfEmailEntity.copyWith.fieldName(...)`.
  _$EmailEntityCWProxy get copyWith => _$EmailEntityCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailEntity _$EmailEntityFromJson(Map<String, dynamic> json) => EmailEntity(
      value: json['value'] as String,
    );

Map<String, dynamic> _$EmailEntityToJson(EmailEntity instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
