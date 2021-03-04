import 'package:flutter/material.dart';
import 'package:perguntas/components/questao.dart';
import 'package:perguntas/components/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) resposta;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.resposta,
  });

  bool get temPergunta {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPergunta ? perguntas[perguntaSelecionada]['resposta'] : null;

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((resp) {
          return Resposta(
            resp['texto'],
            () => resposta(resp['pontuacao']),
          );
        }).toList(),
      ],
    );
  }
}
