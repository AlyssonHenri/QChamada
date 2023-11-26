import 'package:flutter/material.dart';

class Expand extends StatefulWidget {
  const Expand({Key? key}) : super(key: key);

  // Por agora ele vai funcioanr apenas no clique
  // Mas depois o objetivo é fazer que todas as parque que usam e semChamdaHoje mudem só
  // depois de obter 1 foto

  @override
  _ExpandState createState() => _ExpandState();
}

class _ExpandState extends State<Expand> {
  bool semChamadaHoje = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: GestureDetector(
                onTap: () {
                  // Muda estado dos widgets
                  // TODO: fazer o botão abrir a camera
                  if (semChamadaHoje) {
                    setState(() {
                      semChamadaHoje = !semChamadaHoje;
                    });
                  } else {
                    () {};
                  }
                },
                child: Container(
                  width: semChamadaHoje ? 300 : 135,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: semChamadaHoje
                        ? MainAxisAlignment.spaceEvenly
                        : MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.camera_alt,
                        size: 35,
                      ),
                      if (semChamadaHoje)
                        const Text(
                          'REALIZAR CHAMADA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            // icon que deve levar o prof para a tela com todos os dados da ultima chamada realizada
            // ainda para fazer
            if (!semChamadaHoje)
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 10),
                child: Container(
                  width: 135,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.note_alt,
                      size: 35,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(bottom: 15),
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const TextField(
            maxLines: null,
            expands: true,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'NOTAS DE AULA',
              hintStyle: TextStyle(color: Colors.white),
              contentPadding: EdgeInsets.only(top: 15),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
