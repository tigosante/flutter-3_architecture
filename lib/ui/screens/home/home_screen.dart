import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/screens/home/home_screen_mobile.dart';
import 'package:flutter_architecture/ui/screens/home/home_screen_web.dart';
import 'package:flutter_architecture/ui/widgets/responsive_layout_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
      web: (_, constraints) => HomeScreenWeb(constraints: constraints),
      mobile: (_, __) => const HomeScreenMobile(),
    );
  }
}
