import 'package:flutter/material.dart';
import 'hoja_confirmacion.dart';

class HojaOtp extends StatefulWidget {
  final String referencia;
  const HojaOtp({super.key, required this.referencia});

  @override
  State<HojaOtp> createState() => _HojaOtpState();
}

class _HojaOtpState extends State<HojaOtp> {
  final ctrl = TextEditingController();
  bool enviando = true;
  int segundos = 30;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 800), () {
      if (!mounted) return;
      ctrl.text = '123456';
      setState(() => enviando = false);
    });
    _tick();
  }

  void _tick() async {
    while (mounted && segundos > 0) {
      await Future.delayed(const Duration(seconds: 1));
      if (!mounted) break;
      setState(() => segundos--);
    }
  }

  Future<void> _verificar() async {
    if (ctrl.text.length == 6) {
      await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) => const HojaConfirmacion(),
      );
      if (mounted) Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Código inválido')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16, right: 16, top: 12,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(width: 42, height: 5, margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(10))),
          Text(
            'Por favor ingrese la clave de validación que ofrece su Banco.\n${widget.referencia}',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          TextField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            maxLength: 6,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: '••••••', counterText: ''),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: enviando ? null : _verificar,
            child: const Text('Verificar'),
          ),
          const SizedBox(height: 6),
          TextButton(
            onPressed: segundos == 0 ? () {
              setState(() { segundos = 30; enviando = true; });
              Future.delayed(const Duration(milliseconds: 800), () {
                if (!mounted) return;
                ctrl.text = '123456';
                setState(() => enviando = false);
              });
              _tick();
            } : null,
            child: Text(segundos == 0 ? 'Reenviar código' : 'Reenviar código (${segundos}s)'),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
