import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_first_project/constants/controllers.dart';
import 'package:web_first_project/helpers/responsiveness.dart';
import 'package:web_first_project/routing/routes.dart';
import 'package:web_first_project/widget/customText.dart';
import 'package:web_first_project/widget/side_menu_item.dart';

import '../constants/style.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icon/logo.png"),
                    ),
                    Flexible(
                        child: CustomText(
                      text: "Dash",
                      size: 20,
                      fontWeight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(
                      width: width / 48,
                    )
                  ],
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(0.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                    onTap: () {
                      if (itemName == AuthenticationPageRoute) {
                        //to do go to authentication page
                      }

                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(itemName);
                      }
                    },
                    itemName: itemName == AuthenticationPageRoute
                        ? "Log Out"
                        : itemName))
                .toList(),
          )
        ],
      ),
    );
  }
}
