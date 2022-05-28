import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/layout/application_measures.dart';
import 'package:flutter_architecture/ui/widgets/card_widget.dart';

class CardTextWidget extends StatelessWidget {
  const CardTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Padding(
        padding: ApplicationMeasures.bodyPadding,
        child: Center(
          child: SingleChildScrollView(
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ),
      ),
    );
  }
}
