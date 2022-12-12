import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_first_project/constants/controllers.dart';
import 'package:web_first_project/constants/style.dart';
import 'package:web_first_project/widget/customText.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
  const HorizontalMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                    maintainSize: true,
                    maintainState: true,
                    maintainAnimation: true,
                    visible: menuController.isHovering(itemName) ||
                        menuController.isActive(itemName),
                    child: Container(
                      width: 6,
                      height: 40,
                      color: dark,
                    )),
                SizedBox(
                  width: width / 80,
                ),
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
          )),
    );
  }
}
