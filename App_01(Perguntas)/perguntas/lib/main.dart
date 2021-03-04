import 'package:flutter/material.dart';
import 'package:perguntas/widgets/questoes.dart';
import 'package:perguntas/widgets/resultado.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      "texto": 'Qual é a sua cor favorita?',
      "resposta": [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 8},
        {'texto': 'Verde', 'pontuacao': 5},
        {'texto': 'Branco', 'pontuacao': 3},
      ]
    },
    {
      "texto": 'Qual é o seu animal favorito?',
      "resposta": [
        {'texto': 'Coelho', 'pontuacao': 3},
        {'texto': 'Cobra', 'pontuacao': 8},
        {'texto': 'Elefante', 'pontuacao': 5},
        {'texto': 'Leão', 'pontuacao': 10},
      ]
    },
    {
      "texto": 'Qual é o seu Mamaco favorito?',
      "resposta": [
        {'texto': 'João', 'pontuacao': 5},
        {'texto': 'Jet', 'pontuacao': 10},
        {'texto': 'Xunio', 'pontuacao': 8},
        {'texto': 'Moeda', 'pontuacao': 3},
      ]
    }
  ];

  bool get temPergunta {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _resposta(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  void _reiniciar() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPergunta
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                resposta: _resposta,
              )
            : Resultado(
                _pontuacaoTotal,
                _reiniciar,
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
