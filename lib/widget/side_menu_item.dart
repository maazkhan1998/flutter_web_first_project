import 'package:flutter/material.dart';
import 'package:web_first_project/helpers/responsiveness.dart';
import 'package:web_first_project/widget/horizontal_menu_item.dart';
import 'package:web_first_project/widget/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
  const SideMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
