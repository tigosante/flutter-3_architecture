import 'package:flutter/material.dart';

typedef CallBackPlatform = Widget Function(BuildContext, BoxConstraints);
const int mobileWidth = 600;

class ResponsiveLayoutWidget extends StatelessWidget {
  const ResponsiveLayoutWidget({
    Key? key,
    required CallBackPlatform web,
    required CallBackPlatform mobile,
  })  : _web = web,
        _mobile = mobile,
        super(key: key);

  final CallBackPlatform _web;
  final CallBackPlatform _mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= mobileWidth) return _mobile(context, constraints);
        return _web(context, constraints);
      },
    );
  }
}
