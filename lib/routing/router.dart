import 'package:flutter/material.dart';
import 'package:web_first_project/pages/clients/clients.dart';
import 'package:web_first_project/pages/overview/overview.dart';
import 'package:web_first_project/routing/routes.dart';

import '../pages/drivers/drivers.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _pageRoute(OverViewPage());

    case DriverPageRoute:
      return _pageRoute(DriverPage());

    case ClientsPageRoute:
      return _pageRoute(ClientPage());

    default:
      return _pageRoute(OverViewPage());
  }
}

PageRoute _pageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
