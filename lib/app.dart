import 'package:flutter/material.dart';
import 'routes.dart';
import 'theme.dart';

class MicroBusApp extends StatelessWidget {
  const MicroBusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const Text('MicroBus NFC'),
        ),
        body: const Center(
          child: Text('Welcome to MicroBus NFC'),
        ),
      )),
      title: 'MicroBus NFC',
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      initialRoute: Routes.splash,
      routes: appRoutes,
    );
  }
}
