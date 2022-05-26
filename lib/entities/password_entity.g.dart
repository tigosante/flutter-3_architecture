// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PasswordEntityCWProxy {
  PasswordEntity value(String value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PasswordEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PasswordEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  PasswordEntity call({
    String? value,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPasswordEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPasswordEntity.copyWith.fieldName(...)`
class _$PasswordEntityCWProxyImpl implements _$PasswordEntityCWProxy {
  final PasswordEntity _value;

  const _$PasswordEntityCWProxyImpl(this._value);

  @override
  PasswordEntity value(String value) => this(value: value);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PasswordEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PasswordEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  PasswordEntity call({
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return PasswordEntity(
      value: value == const $CopyWithPlaceholder() || value == null
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String,
    );
  }
}

extension $PasswordEntityCopyWith on PasswordEntity {
  /// Returns a callable class that can be used as follows: `instanceOfPasswordEntity.copyWith(...)` or like so:`instanceOfPasswordEntity.copyWith.fieldName(...)`.
  _$PasswordEntityCWProxy get copyWith => _$PasswordEntityCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordEntity _$PasswordEntityFromJson(Map<String, dynamic> json) => PasswordEntity(
      value: json['value'] as String,
    );

Map<String, dynamic> _$PasswordEntityToJson(PasswordEntity instance) => <String, dynamic>{
      'value': instance.value,
    };
