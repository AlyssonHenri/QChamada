import 'package:flutter/material.dart';
import 'package:qChamada/widgets/cores.dart';
import 'package:qChamada/widgets/barra_de_busca.dart';
import 'package:qChamada/widgets/perfil_professor.dart';
import 'package:qChamada/widgets/turmas.dart';
import 'package:qChamada/dados/turmas.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final listaTurmas = Turmas.listaTurmas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgCor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgCor,
        toolbarHeight: 90,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: BarraDeBusca()),
            PerfilProfessor(),
          ],
        ),
      ),
      body: ListView(
        children: [
          for (Turmas turma in listaTurmas)
            Turma(turma.nome, turma.horaIni, turma.horaFim),
        ],
      ),
    );
  }
}
