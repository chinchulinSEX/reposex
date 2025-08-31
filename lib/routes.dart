import 'package:flutter/material.dart';
import 'screens/pantalla_splash.dart';
import 'screens/pantalla_inicio_sesion.dart';
import 'screens/pantalla_mapa.dart';

class Routes {
  static const splash = '/';
  static const inicioSesion = '/inicio-sesion';
  static const mapa = '/mapa';
}

final Map<String, WidgetBuilder> appRoutes = {
  Routes.splash: (_) => const PantallaSplash(),
  Routes.inicioSesion: (_) => const PantallaInicioSesion(),
  Routes.mapa: (_) => const PantallaMapa(),
};
