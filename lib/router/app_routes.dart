import 'package:flutter/material.dart';

import 'package:flutter_seed/models/models.dart';
import 'package:flutter_seed/screens/screens.dart';

class AppRoutes {
  static const String initialRoute = MainScreen.routeName;

  ///* Add new Menu Option here
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: MainScreen.routeName,
        title: MainScreen.routeTitle,
        screen: const MainScreen(),
        icon: MainScreen.routeIcon),
    MenuOption(
        route: SettingsScreen.routeName,
        title: SettingsScreen.routeTitle,
        screen: const SettingsScreen(),
        icon: SettingsScreen.routeIcon)
  ];

  ///* Generator Routes from menuOptions
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // ///* Main Routes
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   MainScreen.routeName: (_) => const MainScreen(),
  //   SettingsScreen.routeName: (_) => const SettingsScreen()
  // };

  ///* Generator dinamyc routes
  // static Route<dynamic> onGenerateRoute(RouteSettings settings) {
  //   return MaterialPageRoute(builder: (context) => const SettingsScreen());
  // }
}
