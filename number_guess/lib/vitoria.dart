import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Vitoria extends StatefulWidget {
  static const routeName = "/vitoria";

  @override
  State<Vitoria> createState() => _VitoriaState();
}

class Pontuacao {
  int pontos = 0;
  Pontuacao(this.pontos);
}

class _VitoriaState extends State<Vitoria> {
  @override
  Widget build(BuildContext context) {
    var p = ModalRoute.of(context)!.settings.arguments as Pontuacao;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Text(
                "Parabéns!!!",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "Pontuação: " + p.pontos.toString(),
                style: TextStyle(fontSize: 25),
              ),
            ])));
  }
}
