import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter_seed/models/models.dart';
import 'package:flutter_seed/shared/shared.dart';
import 'package:flutter_seed/widgets/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const String routeName = 'home';
  static const String routeTitle = 'Home';
  static const IconData routeIcon = Icons.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('HomeScreen')),
        drawer: const DrawMainMenu(),
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
