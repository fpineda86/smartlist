import 'package:flutter/material.dart';
import 'views/home_screen.dart'; // Importamos la vista que creamos

void main() {
  runApp(const SmartListApp());
}

class SmartListApp extends StatelessWidget {
  const SmartListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartList',
      debugShowCheckedModeBanner: false,
      // Configuración del tema con Material 3 (estándar de 2026)
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        // Personalización de la AppBar para que se vea profesional
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
      ),
      // La pantalla inicial de la aplicación
      home: HomeScreen(),
    );
  }
}