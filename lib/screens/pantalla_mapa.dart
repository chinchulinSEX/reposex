import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/hoja_pago.dart';

class PantallaMapa extends StatefulWidget {
  const PantallaMapa({super.key});

  @override
  State<PantallaMapa> createState() => _PantallaMapaState();
}

class _PantallaMapaState extends State<PantallaMapa> {
  bool abierto = false;

  Future<void> _abrirPago() async {
    setState(() => abierto = true);
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => const HojaPago(),
    );
    if (mounted) setState(() => abierto = false);
  }

  @override
  Widget build(BuildContext context) {
    final fondo = abierto
        ? 'assets/imagenes/mapaSTC2.jpeg'
        : 'assets/imagenes/mapaSTC1.jpeg';

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _abrirPago,
              child: Image.asset(fondo, fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 16, left: 16,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/menu.svg', width: 28),
            ),
          ),
          Positioned(
            top: 16, right: 16,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/ubi.svg', width: 28),
            ),
          ),
          Positioned(
            right: 16, bottom: 16,
            child: FloatingActionButton(
              onPressed: _abrirPago,
              child: const Icon(Icons.payments),
            ),
          ),
        ],
      ),
    );
  } 
}
