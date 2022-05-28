import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/layout/application_colors.dart';
import 'package:flutter_architecture/ui/layout/application_measures.dart';
import 'package:flutter_architecture/ui/screens/home/widgets/button_save_widget.dart';
import 'package:flutter_architecture/ui/screens/home/widgets/comment_label_widget.dart';
import 'package:flutter_architecture/ui/screens/home/widgets/input_comment_widget.dart';
import 'package:flutter_architecture/ui/widgets/card_widget.dart';

class CardCommentWidget extends StatelessWidget {
  const CardCommentWidget({Key? key, required BoxConstraints constraints})
      : _constraints = constraints,
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        width: _width,
        height: _height,
        child: CardWidget(
          child: Padding(
            padding: ApplicationMeasures.bodyPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CommentLabelWidget(),
                    ButtonSaveWidget(),
                  ],
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: ApplicationColors.gray),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: const InputCommentWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
