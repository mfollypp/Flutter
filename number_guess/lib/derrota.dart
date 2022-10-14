import 'package:number_guess/selecionaNivel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Derrota extends StatefulWidget {
  static const routeName = "/derrota";

  @override
  State<Derrota> createState() => _DerrotaState();
}

class NumeroSorteado {
  int num = 0;

  NumeroSorteado(this.num);
}

class _DerrotaState extends State<Derrota> {
  @override
  Widget build(BuildContext context) {
    var n = ModalRoute.of(context)!.settings.arguments as NumeroSorteado;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Text(
                "Tentativas restantes: " + n.num.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Text(
//"Será que você consegue acertar?",
                "Parabens",
                style: TextStyle(fontSize: 25),
              ),
            ])));
  }
}
