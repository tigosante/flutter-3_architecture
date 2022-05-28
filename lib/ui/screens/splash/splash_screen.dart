import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_architecture/ui/layout/application_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/routes/application_router.gr.dart';
import 'package:flutter_architecture/ui/routes/router_module.dart';

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
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => ApplicationRouterModule.instance.push(const HomeScreenRoute()),
    );
  }

  Widget get _progressIndicatorOthersPlatforms => const CircularProgressIndicator(
        strokeWidth: 2,
        color: ApplicationColors.primary,
        backgroundColor: ApplicationColors.white,
      );

  Widget get _progressIndicator {
    if (kIsWeb || Platform.isAndroid) return _progressIndicatorOthersPlatforms;
    if (Platform.isIOS || Platform.isMacOS) {
      return const CircularProgressIndicator.adaptive(backgroundColor: ApplicationColors.primary);
    }
    return _progressIndicatorOthersPlatforms;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: FlutterLogo(size: 100),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: _progressIndicator,
          )
        ],
      ),
    );
  }
}
