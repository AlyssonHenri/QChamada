import 'package:flutter/material.dart';

class PerfilProfessor extends StatelessWidget {
  const PerfilProfessor({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/imagens/prof.jpg'),
      ),
    );
  }
}
