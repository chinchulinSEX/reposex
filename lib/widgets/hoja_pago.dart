import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'hoja_otp.dart';
import 'hoja_agregar_cuenta.dart';

class HojaPago extends StatefulWidget {
  const HojaPago({super.key});

  @override
  State<HojaPago> createState() => _HojaPagoState();
}

class _HojaPagoState extends State<HojaPago> {
  int personas = 1;
  int metodo = 0; // 0 BNB, 1 ECO

  void _abrirOtp() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => HojaOtp(
        referencia: metodo == 0 ? '542******245' : '829******993',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.58,
      minChildSize: 0.45,
      maxChildSize: 0.95,
      builder: (ctx, controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListView(
            controller: controller,
            children: [
              Center(
                child: Container(
                  width: 42, height: 5, margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.black26, borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const Text('Métodos de Pago',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Row(
                children: [
                  SvgPicture.asset('assets/svg/persona.svg', width: 22),
                  const SizedBox(width: 8),
                  const Text('Personas'),
                  const Spacer(),
                  IconButton(
                    onPressed: () => setState(() => personas = (personas > 1) ? personas - 1 : 1),
                    icon: const Icon(Icons.remove_circle_outline),
                  ),
                  Text('$personas', style: const TextStyle(fontWeight: FontWeight.bold)),
                  IconButton(
                    onPressed: () => setState(() => personas++),
                    icon: const Icon(Icons.add_circle_outline),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text('Banco', style: TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 6),
              _tileBanco(
                indice: 0,
                logoSvg: 'assets/svg/bancoBNB.svg',
                titulo: 'Banco Nacional de Bolivia',
                subtitulo: 'Cuenta corriente',
                mascara: '542******245',
              ),
              _tileBanco(
                indice: 1,
                logoSvg: 'assets/svg/bancoECO.svg',
                titulo: 'Banco Económico',
                subtitulo: 'Cuenta corriente',
                mascara: '829******993',
              ),
              const SizedBox(height: 8),
              OutlinedButton.icon(
                onPressed: () => showModalBottomSheet(
                  context: context, isScrollControlled: true,
                  builder: (_) => const HojaAgregarCuenta(),
                ),
                icon: const Icon(Icons.add_card),
                label: const Text('Añadir cuentas'),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancelar'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _abrirOtp,
                      child: const Text('Enviar pago'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }

  Widget _tileBanco({
    required int indice,
    required String logoSvg,
    required String titulo,
    required String subtitulo,
    required String mascara,
  }) {
    final seleccionado = metodo == indice;
    return InkWell(
      onTap: () => setState(() => metodo = indice),
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: seleccionado ? Theme.of(context).colorScheme.primary : Colors.black12,
          ),
          color: seleccionado
              ? Theme.of(context).colorScheme.primary.withOpacity(.08)
              : null,
        ),
        child: Row(
          children: [
            SvgPicture.asset(logoSvg, width: 38),
            const SizedBox(width: 12),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(titulo, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text('$subtitulo  ·  $mascara', style: const TextStyle(color: Colors.black54)),
              ]),
            ),
            if (seleccionado) const Icon(Icons.check_circle, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
