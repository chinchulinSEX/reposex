# MicroBus NFC — Esqueleto

## Cómo usar este ZIP
1. Crea un proyecto Flutter vacío:
   ```bash
   flutter create microbus_nfc
   cd microbus_nfc
   ```

2. Copia TODO el contenido de este ZIP **encima** del proyecto creado (reemplaza `lib/`, `assets/` y `pubspec.yaml`).

3. Instala dependencias y corre:
   ```bash
   flutter clean
   flutter pub get
   flutter run
   ```

## Flujo incluido
- Splash → Inicio de sesión → Mapa
- En el mapa, tap abre **Hoja de Pago**
- **Enviar pago** → **Hoja OTP**
- Validación correcta → **Hoja de Confirmación**
