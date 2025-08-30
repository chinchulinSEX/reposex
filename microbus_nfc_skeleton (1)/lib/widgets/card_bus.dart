import 'package:flutter/material.dart';

class CardBus extends StatelessWidget {
  final String title;
  final String sub;

  const CardBus({super.key, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.directions_bus_filled),
        title: Text(title),
        subtitle: Text(sub),
      ),
    );
  }
}
