import 'package:flutter/material.dart';

class HojaAgregarCuenta extends StatelessWidget {
  const HojaAgregarCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text('Añadir cuenta bancaria (demo)'),
          SizedBox(height: 12),
          TextField(decoration: InputDecoration(labelText: 'Banco')),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: 'Número de cuenta')),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
