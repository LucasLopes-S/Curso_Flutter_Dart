import 'package:flutter/material.dart';
import 'package:perguntas/questao.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _resposta() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('Pergunta Respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu game favorito?',
      'Qual é o sua comida favorita?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _resposta,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _resposta,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _resposta,
            ),
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
