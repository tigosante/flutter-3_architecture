import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/layout/application_colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required Widget child,
  })  : _child = child,
        super(key: key);

  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: const BoxDecoration(
        color: ApplicationColors.white,
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: _child,
    );
  }
}
