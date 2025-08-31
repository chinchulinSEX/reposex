import 'package:flutter/material.dart';

ThemeData buildTheme() {
  const primario = Color(0xFF11B26A);
  final esquema = ColorScheme.fromSeed(seedColor: primario);

  return ThemeData(
    colorScheme: esquema,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      filled: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
    ),
  );
}
