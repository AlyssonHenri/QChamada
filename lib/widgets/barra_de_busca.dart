import 'package:flutter/material.dart';
import 'package:qChamada/widgets/cores.dart';

class BarraDeBusca extends StatelessWidget {
  final Function(String) aoDigitar;

  const BarraDeBusca(this.aoDigitar, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              onChanged: aoDigitar,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(
                  Icons.search,
                  color: preto,
                  size: 20,
                ),
                prefixIconConstraints: BoxConstraints(
                  maxHeight: 20,
                  maxWidth: 25,
                ),
                border: InputBorder.none,
                hintText: 'Buscar turmas',
              ),
            ),
          )
        ],
      ),
    );
  }
}
