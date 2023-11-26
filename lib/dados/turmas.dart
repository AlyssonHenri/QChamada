class Turmas {
  String nome;
  String horaIni;
  String horaFim;

  Turmas({required this.nome, required this.horaIni, required this.horaFim});

  static List<Turmas> listaTurmas() {
    return [
      Turmas(nome: 'POO', horaIni: '00:00', horaFim: '23:00'),
      Turmas(
          nome: 'INTELIGÊNCIA ARTIFICIAL', horaIni: '00:00', horaFim: '23:00'),
      Turmas(nome: 'ESTRUTURA DE DADOS', horaIni: '00:00', horaFim: '23:00'),
    ];
  }
}
