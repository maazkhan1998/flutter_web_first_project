import 'package:flutter/material.dart';
import 'package:web_first_project/helpers/responsiveness.dart';
import 'package:web_first_project/widget/large_screen.dart';
import 'package:web_first_project/widget/side_menu.dart';
import 'package:web_first_project/widget/small_screen.dart';
import 'package:web_first_project/widget/top_nav.dart';

class SiteLayOut extends StatelessWidget {
  SiteLayOut({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(
        child: SideMenu(),
      ),
      appBar: topNavigationBar(context, scaffoldKey),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
