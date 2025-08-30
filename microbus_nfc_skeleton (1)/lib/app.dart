import 'package:flutter/material.dart';
import 'routes.dart';
import 'theme.dart';

class MicroBusApp extends StatelessWidget {
  const MicroBusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Microbus NFC',
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      initialRoute: Routes.splash,
      routes: appRoutes,
    );
  }
}
