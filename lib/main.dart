import 'package:flutter/material.dart';
import 'package:watch_it/core/theme/theme.dart';
import 'package:watch_it/core/util/constans/routes.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(const WatchApp());
}

class WatchApp extends StatelessWidget {
  const WatchApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeAppManager.lightTheme,

      routes: Routes.routesApp,
      initialRoute: Routes.videosScreen,
    );
  }
}
