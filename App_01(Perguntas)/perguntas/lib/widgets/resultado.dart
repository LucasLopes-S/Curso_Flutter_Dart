import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarApp;
  Resultado(
    this.pontuacao,
    this.reiniciarApp,
  );

  String get fraseResultado {
    if (pontuacao < 11) {
      return 'Parabéns!!';
    } else if (pontuacao < 20) {
      return 'Carai boracha!!';
    } else if (pontuacao < 25) {
      return 'Porrram Tudo isso?';
    } else {
      return 'Cê é o bichão mermo em doido';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
          onPressed: reiniciarApp,
        ),
      ],
    );
  }
}
