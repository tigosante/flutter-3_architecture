import 'package:flutter/material.dart';

class InputCommentWidget extends StatelessWidget {
  const InputCommentWidget({Key? key}) : super(key: key);

  InputBorder get _inputBorder => const OutlineInputBorder(borderSide: BorderSide.none);

  Widget? _counter(
    BuildContext context, {
    required int currentLength,
    required bool isFocused,
    required int? maxLength,
  }) =>
      null;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: 1,
      maxLines: 20,
      maxLength: 1000,
      buildCounter: _counter,
      autocorrect: true,
      enableSuggestions: true,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        enabledBorder: _inputBorder,
        focusedBorder: _inputBorder,
        disabledBorder: _inputBorder,
      ),
    );
  }
}
