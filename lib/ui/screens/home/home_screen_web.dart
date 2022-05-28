import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/layout/application_colors.dart';
import 'package:flutter_architecture/ui/layout/application_measures.dart';
import 'package:flutter_architecture/ui/screens/home/widgets/card_comment_widget.dart';
import 'package:flutter_architecture/ui/screens/home/widgets/card_text_widget.dart';
import 'package:flutter_architecture/ui/screens/home/widgets/drawer/drawer_widget.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({
    Key? key,
    required BoxConstraints constraints,
  })  : _constraints = constraints,
        super(key: key);

  final BoxConstraints _constraints;

  double? get _width {
    if (_constraints.maxWidth.ceilToDouble() >= 775) return 670;
    return null;
  }

  double? get _height {
    if (_constraints.maxHeight.ceilToDouble() >= 994) return 994;
    return null;
  }

  Widget get _drawer {
    if (_constraints.maxWidth.ceilToDouble() <= 1410) return const SizedBox();
    if (_constraints.maxWidth.ceilToDouble() >= 1130) return const DrawerWidget();
    return const SizedBox();
  }

  Widget get _cardCommentWidgetBottom {
    if (_constraints.maxHeight.ceilToDouble() <= 940) return const SizedBox();
    if (_constraints.maxHeight.ceilToDouble() <= 720) return const SizedBox();
    return Column(
      children: [
        const SizedBox(height: 40),
        SizedBox(
          height: 350,
          child: CardCommentWidget(constraints: _constraints),
        ),
      ],
    );
  }

  Widget get _cardCommentWidgetLeft {
    if (_constraints.maxHeight.ceilToDouble() <= 720) {
      return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          width: 400,
          child: CardCommentWidget(constraints: _constraints),
        ),
      );
    }
    return const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: ApplicationColors.white),
      ),
      backgroundColor: ApplicationColors.primary,
      body: Padding(
        padding: ApplicationMeasures.horizontalPadding,
        child: Padding(
          padding: ApplicationMeasures.verticalPadding,
          child: _constraints.maxWidth.ceilToDouble() <= 600
              ? const CardTextWidget()
              : Stack(
                  children: [
                    Padding(
                      padding: ApplicationMeasures.horizontalPadding.copyWith(left: 0),
                      child: _drawer,
                    ),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                      width: _width,
                                      height: _height,
                                      child: const CardTextWidget(),
                                    ),
                                  ),
                                ),
                                _cardCommentWidgetLeft,
                              ],
                            ),
                          ),
                          _cardCommentWidgetBottom,
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
