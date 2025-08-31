import 'package:flutter/material.dart';
import '../routes.dart';

class PantallaInicioSesion extends StatelessWidget {
  const PantallaInicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    final ciCtrl = TextEditingController();
    final passCtrl = TextEditingController();
    bool acepto = false;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/imagenes/micro.png',
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 18),
            const Icon(Icons.directions_bus_filled, size: 48),
            const SizedBox(height: 8),
            const Text('Inicia sesión',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
            const SizedBox(height: 4),
            const Text(
              'Por favor inicia sesión para acceder a la app de pagos para micros',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 18),
            TextField(
              controller: ciCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Carnet de identidad'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Contraseña'),
            ),
            const SizedBox(height: 8),
            StatefulBuilder(
              builder: (context, setState) => CheckboxListTile(
                dense: true,
                value: acepto,
                onChanged: (v) => setState(() => acepto = v ?? false),
                title: const Text('Acepto los Términos y Privacidad'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, Routes.mapa),
              child: const Text('Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
