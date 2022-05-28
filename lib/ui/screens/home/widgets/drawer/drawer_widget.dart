import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/layout/application_colors.dart';
import 'package:flutter_architecture/ui/screens/home/widgets/drawer/item_drawer_widget.dart';
import 'package:flutter_architecture/ui/widgets/card_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: ApplicationColors.transparent,
      child: CardWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const ItemDrawerWidget(
                label: "User name",
                icon: Icons.person,
              ),
              const Divider(height: 16),
              const ItemDrawerWidget(
                label: "Cards",
                icon: Icons.crop_landscape_rounded,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Versão: 2.1.0",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline4?.copyWith(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
