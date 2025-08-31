import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HojaConfirmacion extends StatelessWidget {
  const HojaConfirmacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(width: 42, height: 5, margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(10))),
          SvgPicture.asset('assets/svg/bien.svg', width: 64),
          const SizedBox(height: 8),
          const Text('Pago enviado', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          Card(
            child: ListTile(
              leading: const Icon(Icons.directions_bus),
              title: const Text('Línea 68 Roja - 157'),
              subtitle: const Text('Av. Nuevo Palmar, Los Lotes'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Bs 2,30', style: TextStyle(fontWeight: FontWeight.w700)),
                  SizedBox(height: 2),
                  Text('Adulto Regular', style: TextStyle(fontSize: 12, color: Colors.black54)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Aceptar'),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
