import 'package:flutter/material.dart';

import 'package:flutter_seed/router/app_routes.dart';

class DrawMainMenu extends StatelessWidget {
  const DrawMainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOpts = AppRoutes.menuOptions;

    return Drawer(
        child: Column(children: [
      const _DrawHeader(),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: menuOpts.length,
          itemBuilder: (_, int idx) {
            return ListTile(
                leading: Icon(menuOpts[idx].icon),
                title: Text(menuOpts[idx].title),
                onTap: () => Navigator.pushReplacementNamed(
                    context, menuOpts[idx].route));
          },
        ),
      )
    ]));
  }
}

class _DrawHeader extends StatelessWidget {
  const _DrawHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: Container(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg_menu.jpg'), fit: BoxFit.cover)));
  }
}
