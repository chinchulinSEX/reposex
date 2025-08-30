import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Moisés Guerra'),
            subtitle: Text('ID: 000123'),
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Tarjeta'),
            subtitle: Text('**** **** **** 1234'),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Acerca de'),
            subtitle: Text('Demo UI — sin NFC real.'),
          ),
        ],
      ),
    );
  }
}
