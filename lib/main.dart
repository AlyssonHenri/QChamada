import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qChamada/telas/home.dart';

void main() {
  runApp(const CheckApp());
}

class CheckApp extends StatelessWidget {
  const CheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'qChamada',
      home: Home(),
    );
  }
}

// TODO: Alysson
// - Implementar o sistema de busca de turmas
// - Visuais da tela de turmas (tá bem feio por agora)
// - Implementar acesso a camera e armazenamento adequado da foto
// - Implementar conversão de foto para link (para futura coneção com o back)
