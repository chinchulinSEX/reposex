import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';

class RechargeScreen extends StatelessWidget {
  const RechargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final amountCtrl = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Recargar saldo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: amountCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Monto (Bs)'),
            ),
            const SizedBox(height: 16),
            PrimaryButton(
              text: 'Pagar (dummy)',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Pago simulado 😊')),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
