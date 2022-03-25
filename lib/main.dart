import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/providers.dart' show ThemeProvider;
import 'router/app_routes.dart';
import 'shared/shared.dart' show Preferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (_) => ThemeProvider(isDarkMode: Preferences.isDarkMode))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Seed',
      initialRoute: AppRoutes.initialRoute,

      // Defined routes
      routes: AppRoutes.getAppRoutes(),

      // Generator dinamyc routes
      // onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: Provider.of<ThemeProvider>(context).currentTheme
    );
  }
}
