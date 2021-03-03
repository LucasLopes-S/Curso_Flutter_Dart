import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() selecionado;
  Resposta(this.texto, this.selecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(15, 1, 15, 1),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          texto,
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
        onPressed: selecionado,
      ),
    );
  }
}
