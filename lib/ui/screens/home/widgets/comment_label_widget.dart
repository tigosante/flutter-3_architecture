import 'package:flutter/material.dart';

class CommentLabelWidget extends StatelessWidget {
  const CommentLabelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Comentários",
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.headline4?.copyWith(fontSize: 14),
    );
  }
}
