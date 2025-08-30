# Microbus NFC — Esqueleto UI (Flutter)

Este es un **esqueleto solo frontend** para que empieces YA en VS Code/Android Studio sin complicarte.
Incluye navegación básica, pantallas dummy y componentes simples. **No hay backend** ni conexión real a NFC.

## Cómo usarlo (paso a paso)

1. **Instala Flutter** (si no lo hiciste) y acepta licencias:
   ```bash
   flutter doctor
   flutter doctor --android-licenses
   ```

2. **Descomprime** esta carpeta y ábrela en **VS Code** o **Android Studio**.

3. En la raíz del proyecto (donde está `pubspec.yaml`), ejecuta:
   ```bash
   # Genera las carpetas de plataforma que faltan (android/ios/web/etc.)
   flutter create .

   # Descarga dependencias
   flutter pub get

   # Ejecuta
   flutter run
   ```

> Consejo: si sólo harás UI, puedes correr también en **Chrome**:
> ```bash
> flutter run -d chrome
> ```

## Estructura

```
lib/
  app.dart
  main.dart
  routes.dart
  theme.dart
  screens/
    splash_screen.dart
    login_screen.dart
    home_screen.dart
    recharge_screen.dart
    history_screen.dart
    profile_screen.dart
  widgets/
    primary_button.dart
    nav_bar.dart
    card_bus.dart
pubspec.yaml
```

## Personaliza
- Cambia colores en `theme.dart`.
- Agrega rutas en `routes.dart`.
- Crea pantallas nuevas en `lib/screens/`.
- Añade assets en `assets/images/` y `assets/icons/` y decláralos en `pubspec.yaml`.

---

Hecho para avanzar rápido. 🚀
