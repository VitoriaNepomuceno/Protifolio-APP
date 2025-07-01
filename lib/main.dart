import 'package:flutter/material.dart';
import './primeira.dart';
import './segunda.dart';
import './jogo_da_velha.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Primeira(),
        '/segunda': (context) => const Segunda(),
        '/jogo_da_velha': (context) => const JogoDaVelha(),
      },
    );
  }
}