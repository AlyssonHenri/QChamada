import 'dart:math';
import 'package:qChamada/widgets/cores.dart';
import 'package:flutter/material.dart';
import 'package:qChamada/widgets/chamada_relatorio.dart';

class Turma extends StatefulWidget {
  Turma(this.nomeTurma, this.horaInicio, this.horaFim, {super.key});

  final String nomeTurma;
  String horaInicio;
  String horaFim;

  @override
  TurmaState createState() => TurmaState();
}

class TurmaState extends State<Turma> {
  @override
  Widget build(BuildContext context) {
    final Random random = Random();

    return Container(
      // constole de forma dos widgets Turma e de espaçamento em relação a tela
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(bottom: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
              decoration: BoxDecoration(
                // Imagem de background das turmas
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    // Randomizador de posição da imagem
                    alignment: Alignment(0, -1 + random.nextDouble() * 2),
                    image: const AssetImage(
                        'assets/imagens/icon_classe_generico3.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.1), BlendMode.dstATop)),
              ),
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 15),
                  title: Text(
                    widget.nomeTurma,
                    style: const TextStyle(color: preto),
                  ),
                  trailing: Text(
                    '${widget.horaInicio} - ${widget.horaFim}',
                    style: const TextStyle(color: preto),
                  ),
                  children: const <Widget>[
                    Expand()
                  ], // Widget expansivo da turma
                ),
              )),
        ),
      ),
    );
  }
}
