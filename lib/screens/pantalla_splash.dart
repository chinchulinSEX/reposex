import 'package:flutter/material.dart';
import '../routes.dart';

class PantallaSplash extends StatefulWidget {
  const PantallaSplash({super.key});
  @override
  State<PantallaSplash> createState() => _PantallaSplashState();
}

class _PantallaSplashState extends State<PantallaSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1200), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, Routes.inicioSesion);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_bus_filled, size: 72),
            SizedBox(height: 12),
            Text('MicroBus NFC', style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
