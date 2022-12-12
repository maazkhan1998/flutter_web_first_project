import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_first_project/constants/controllers.dart';
import 'package:web_first_project/constants/style.dart';

import 'customText.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
  const VerticalMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? lightGrey.withOpacity(0.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  maintainAnimation: true,
                  maintainSize: true,
                  maintainState: true,
                  child: Container(
                    width: 6,
                    height: 40,
                    color: dark,
                  ),
                ),
                SizedBox(
                  width: width / 80,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: menuController.returnIconFor(itemName),
                      ),
                      if (!menuController.isActive(itemName))
                        Flexible(
                          child: CustomText(
                            text: itemName,
                            color: menuController.isHovering(itemName)
                                ? dark
                                : lightGrey,
                          ),
                        )
                      else
                        Flexible(
                            child: CustomText(
                          text: itemName,
                          color: dark,
                          size: 18,
                          fontWeight: FontWeight.bold,
                        ))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
