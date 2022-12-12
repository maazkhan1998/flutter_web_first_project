import 'package:flutter/material.dart';
import 'package:web_first_project/constants/style.dart';
import 'package:web_first_project/helpers/responsiveness.dart';
import 'package:web_first_project/widget/customText.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0,
      leading: ResponsiveWidget.isSmallScreen(context)
          ? IconButton(
              onPressed: () => key.currentState!.openDrawer(),
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ))
          : Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset("assets/icon/logo.png"),
                )
              ],
            ),
      title: Row(
        children: [
          Visibility(
              child: CustomText(
            text: "Dash",
            color: lightGrey,
            size: 20,
            fontWeight: FontWeight.bold,
          )),
          Expanded(
            child: Container(),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: dark.withOpacity(0.7),
              )),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: dark.withOpacity(0.7),
                  )),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2)),
                  ))
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          CustomText(
            text: "Santos Enoque",
            color: lightGrey,
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: light,
    );
