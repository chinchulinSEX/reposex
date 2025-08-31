import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// 👇 Importa siempre el main.dart, porque ahí está tu clase principal
import '../lib/app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MicroBusApp());

    // Verifica que el contador comienza en 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Simula un toque en el botón '+' y actualiza el widget
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica que el contador se incrementó a 1
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
