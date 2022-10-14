import 'package:number_guess/selecionaNivel.dart';
import 'package:flutter/material.dart';

class Dificuldade extends StatefulWidget {
  static const routeName = "/dificuldade";

  @override
  State<Dificuldade> createState() => _DificuldadeState();
}

class _DificuldadeState extends State<Dificuldade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Selecione o nível de dificuldade",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/jogo",
                      arguments: SelecionaNivel(15));
                },
                child: const Text("Fácil"),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 30,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/jogo",
                      arguments: SelecionaNivel(10));
                },
                child: const Text("Médio"),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 30,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/jogo",
                      arguments: SelecionaNivel(6));
                },
                child: const Text("Difícil"),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            SizedBox(
              height: 25,
              width: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/inicial");
                },
                child: const Text("Voltar"),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
