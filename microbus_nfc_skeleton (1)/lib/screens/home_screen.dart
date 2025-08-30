import 'package:flutter/material.dart';
import '../widgets/nav_bar.dart';
import '../widgets/card_bus.dart';
import '../routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tu saldo: Bs 25.50'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, Routes.profile),
            icon: const Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: NavBar(
        currentIndex: 0,
        onTap: (i) {
          switch (i) {
            case 0:
              break;
            case 1:
              Navigator.pushNamed(context, Routes.recharge);
              break;
            case 2:
              Navigator.pushNamed(context, Routes.history);
              break;
          }
        },
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          SizedBox(height: 8),
          CardBus(title: 'Línea 1 - Rojo', sub: 'Próximo cobro al acercar la tarjeta'),
          CardBus(title: 'Línea 5 - Verde', sub: 'Último viaje: ayer 18:22'),
          CardBus(title: 'Línea 12 - Amarillo', sub: 'Promociones disponibles'),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.nfc),
        label: const Text('NFC'),
      ),
    );
  }
}
