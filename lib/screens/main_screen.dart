import 'package:flutter/material.dart';

import 'package:flutter_seed/shared/shared.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const String routeName = 'main';
  static const String routeTitle = 'Main';
  static const IconData routeIcon = Icons.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('MainScreen')),
        drawer: const MainMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('isDarkMode: ${Preferences.isDarkMode}'),
            const Divider(),
            const Text('Genero: '),
            const Divider(),
            const Text('Nombre de usuario: ')
          ],
        ));
  }
}
