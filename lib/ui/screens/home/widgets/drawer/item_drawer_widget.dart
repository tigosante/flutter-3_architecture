import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/layout/application_colors.dart';

class ItemDrawerWidget extends StatelessWidget {
  const ItemDrawerWidget({
    Key? key,
    required String label,
    required IconData icon,
  })  : _label = label,
        _icon = icon,
        super(key: key);

  final String _label;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: ApplicationColors.gray20,
              child: Icon(
                _icon,
                color: ApplicationColors.gray100,
              ),
            ),
            const SizedBox(width: 16),
            Text(_label),
          ],
        ),
      ),
    );
  }
}
