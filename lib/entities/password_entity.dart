import 'package:flutter_architecture/main/exceptions/invalid_password_exception.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'password_entity.g.dart';

@CopyWith()
@JsonSerializable()
class PasswordEntity {
  PasswordEntity({
    required this.value,
  }) : assert(isValid(value), InvalidPasswordException());

  String value;

  static String get valueEmpty => "******";

  void clear() => value = "";
  static bool isValid(String password) => password.length >= 6;

  factory PasswordEntity.empty() => PasswordEntity(value: valueEmpty);

  factory PasswordEntity.fromJson(Map<String, dynamic> json) => _$PasswordEntityFromJson(json);
  Map<String, dynamic> toJson() => _$PasswordEntityToJson(this);
}
