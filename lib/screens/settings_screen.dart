import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_seed/providers/providers.dart';
import 'package:flutter_seed/shared/shared.dart';
import 'package:flutter_seed/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const String routeName = 'settings';
  static const String routeTitle = 'Settings';
  static const IconData routeIcon = Icons.settings;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
        appBar: AppBar(title: const Text('SettingsScreen')),
        // Main Menu
        drawer: const DrawMainMenu(),

        // Content
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ajustes',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                ),
                const Divider(),
                SwitchListTile.adaptive(
                  value: Preferences.isDarkMode,
                  title: const Text('Darkmode'),
                  onChanged: (value) => setState(() {
                    Preferences.isDarkMode = value;
                    value
                        ? themeProvider.setDarkTheme()
                        : themeProvider.setLightTheme();
                  }),
                ),
                const Divider()
              ],
            ),
          ),
        ));
  }
}
