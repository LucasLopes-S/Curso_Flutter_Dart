import 'package:flutter/material.dart';
import 'package:perguntas/questao.dart';
import 'package:perguntas/resposta.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _resposta() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        "texto": 'Qual é a sua cor favorita?',
        "resposta": ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        "texto": 'Qual é o seu animal favorito?',
        "resposta": ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        "texto": 'Qual é o seu Mamaco favorito?',
        "resposta": ['João', 'Jet', 'Xunio', 'Moeda']
      }
    ];

    List<String> respostas = perguntas[_perguntaSelecionada]['resposta'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas.map((t)=> Resposta(t, _resposta)).toList(),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
