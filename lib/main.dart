import 'package:flutter/material.dart';
import 'package:shilooh/pantalla_inicio.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shilooh',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF111717),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PantallaInicio()

    );
  }
}

