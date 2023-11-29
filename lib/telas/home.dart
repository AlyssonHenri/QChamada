import 'package:flutter/material.dart';
import 'package:qChamada/widgets/cores.dart';
import 'package:qChamada/widgets/barra_de_busca.dart';
import 'package:qChamada/widgets/perfil_professor.dart';
import 'package:qChamada/widgets/turmas.dart';
import 'package:qChamada/dados/turmas.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final listaTurmas = Turmas.listaTurmas();
  List<Turmas> _turmasBuscadas = [];

  @override
  void initState() {
    _turmasBuscadas = listaTurmas;
    super.initState();
  }

  void buscar(String entradaTxtBox) {
    List<Turmas> resultados = [];
    if (entradaTxtBox.isEmpty) {
      resultados = listaTurmas;
    } else {
      resultados = listaTurmas
          .where((item) =>
              item.nome.toLowerCase().contains(entradaTxtBox.toLowerCase()))
          .toList();
    }
    setState(() {
      _turmasBuscadas = resultados;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgCor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgCor,
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: BarraDeBusca(buscar)),
            PerfilProfessor(),
          ],
        ),
      ),
      body: ListView(
        children: [
          for (Turmas turma in _turmasBuscadas)
            Turma(turma.nome, turma.horaIni, turma.horaFim),
        ],
      ),
    );
  }
}
