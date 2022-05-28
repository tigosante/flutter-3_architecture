import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/layout/application_colors.dart';

class ButtonSaveWidget extends StatelessWidget {
  const ButtonSaveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        "Salvar",
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: ApplicationColors.primary,
            ),
      ),
    );
  }
}
