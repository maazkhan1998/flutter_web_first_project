import 'package:flutter/material.dart';
import 'package:web_first_project/constants/controllers.dart';
import 'package:web_first_project/routing/router.dart';
import 'package:web_first_project/routing/routes.dart';

Navigator localNavigator()=>Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);