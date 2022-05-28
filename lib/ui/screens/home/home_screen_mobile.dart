import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/layout/application_colors.dart';
import 'package:flutter_architecture/ui/layout/application_measures.dart';
import 'package:flutter_architecture/ui/screens/home/widgets/card_text_widget.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: ApplicationColors.white),
      ),
      backgroundColor: ApplicationColors.primary,
      body: Padding(
        padding: ApplicationMeasures.bodyPadding,
        child: const CardTextWidget(),
      ),
    );
  }
}
