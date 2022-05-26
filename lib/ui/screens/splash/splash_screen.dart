import 'dart:io';

import 'package:flutter_architecture/main/dependecy_injection/dependency_injection.dart';
import 'package:flutter_architecture/ui/layout/application_colors.dart';
import 'package:flutter_architecture/ui/screens/splash/spash_controller.dart';
import 'package:flutter/material.dart';

class SplashScreen extends SplashScreenWidget {
  SplashScreen({Key? key})
      : super(
          key: key,
          controller: DependencyInjaction.get(),
        );
}

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({
    Key? key,
    required SplashController controller,
  })  : _controller = controller,
        super(key: key);

  final SplashController _controller;

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  void initState() {
    super.initState();
    widget._controller.start();
  }

  double get _shortestSide => MediaQuery.of(context).size.shortestSide;

  Widget get _progressIndicator {
    if (Platform.isIOS) {
      return const CircularProgressIndicator.adaptive(
        backgroundColor: ApplicationColors.white,
      );
    }

    final size = _shortestSide * 0.08;
    return SizedBox(
      width: size,
      height: size,
      child: const CircularProgressIndicator(
        strokeWidth: 2,
        color: ApplicationColors.primary,
        backgroundColor: ApplicationColors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApplicationColors.primary,
      body: Stack(
        children: [
          const Center(
            child: FlutterLogo(),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: _shortestSide * 0.4),
              child: _progressIndicator,
            ),
          ),
        ],
      ),
    );
  }
}
