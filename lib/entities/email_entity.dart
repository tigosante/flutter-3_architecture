import 'package:flutter_architecture/main/exceptions/incorrect_email_exception.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'email_entity.g.dart';

@CopyWith()
@JsonSerializable()
class EmailEntity {
  EmailEntity({
    required this.value,
  }) : assert(isValid(value), IncorrectEmailException());

  String value;

  static String get valueEmpty => "empty@empty.com";

  static bool isValid(String email) => _emailIsValid(email);

  void clear() => value = "";
  bool equals(String email) => value.compareTo(email) == 0;

  factory EmailEntity.empty() => EmailEntity(value: valueEmpty);

  factory EmailEntity.fromJson(Map<String, dynamic> json) => _$EmailEntityFromJson(json);
  Map<String, dynamic> toJson() => _$EmailEntityToJson(this);

  static bool _emailIsValid(String email) =>
      RegExp(r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(email) &&
      !_blockEmoji().hasMatch(email);

  static RegExp _blockEmoji() =>
      RegExp(r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])');
}
