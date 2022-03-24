import 'package:flutter/material.dart';
import 'package:flutter_seed/screens/screens.dart';

class DrawMainMenu extends StatelessWidget {
  const DrawMainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawHeader(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, HomeScreen.routeName),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => Navigator.pushReplacementNamed(context, SettingsScreen.routeName),
          )
        ],
      ),
    );
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
