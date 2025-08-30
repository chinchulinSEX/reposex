import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(10, (i) => {
          'ruta': 'Línea ${(i % 7) + 1}',
          'monto': (3.0 + (i % 3)).toStringAsFixed(2),
          'fecha': '2025-08-2${i} 0${i % 6}:3${i % 5}',
        });

    return Scaffold(
      appBar: AppBar(title: const Text('Historial')),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (_, __) => const Divider(height: 0),
        itemBuilder: (_, i) {
          final it = items[i];
          return ListTile(
            leading: const Icon(Icons.directions_bus),
            title: Text('${it['ruta']} — Bs ${it['monto']}'),
            subtitle: Text('${it['fecha']}'),
            trailing: const Icon(Icons.chevron_right),
          );
        },
      ),
    );
  }
}
