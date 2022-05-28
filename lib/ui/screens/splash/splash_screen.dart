import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_architecture/ui/layout/application_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends SplashScreenWidget {
  const SplashScreen({Key? key}) : super(key: key);
}

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  double get _shortestSide => MediaQuery.of(context).size.shortestSide;

  Widget get _progressIndicator {
    if (kIsWeb || Platform.isAndroid) {
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
    if (Platform.isIOS || Platform.isMacOS) {
      return const CircularProgressIndicator.adaptive(
        backgroundColor: ApplicationColors.white,
      );
    }
    return const SizedBox();
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
