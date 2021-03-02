import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void resposta() {
    print('Pergunta Respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: resposta,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: resposta,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: resposta,
            ),
          ],
        ),
      ),
    );
  }
}
