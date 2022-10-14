import 'package:number_guess/selecionaNivel.dart';
import 'package:number_guess/vitoria.dart';
import 'package:flutter/material.dart';

import 'derrota.dart';

class Jogo extends StatefulWidget {
  String _message = "Tela 2";
  static const routeName = "/jogo";

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  TextEditingController controller = TextEditingController();
  int chute = 0;
  String _message = "Será que você consegue acertar?";
  int _pontos = 1000;

  void geraDica(chute, numero) {
    if (chute - numero >= 25) {
      _message = "Seu chute foi muito maior!";
    } else if (chute - numero > 0 && chute - numero < 25) {
      _message = "Seu chute foi maior!";
    } else if (numero - chute > 0 && numero - chute < 25) {
      _message = "Seu chute foi menor!";
    } else {
      _message = "Seu chute foi muito menor!";
    }
  }

  void calculaPontos(chute, numero) {
    int dif = chute - numero;
    _pontos -= dif.abs();
  }

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SelecionaNivel;
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/fundo.png"), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Tentativas restantes: " + args.nivel.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                Text(
//"Será que você consegue acertar?",
                  _message,
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                    width: 200,
                    child: TextField(
                      controller: controller,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        label: const Center(
                          child: Text(
                            "Digite um número:",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      onChanged: (n) {
                        setState(() {
                          chute = int.parse(n);
                        });
                      },
                    )),
                ElevatedButton(
                    onPressed: () {
/*Navigator.push(context,
MaterialPageRoute(
builder: (context) => Tela3("Novo texto 2"), 
)
);*/
                      setState(() {
                        args.nivel--;
                        controller.clear();
                      });
                      if (chute == args.numero) {
                        Navigator.pushNamed(context, "/vitoria",
                            arguments: Pontuacao(_pontos));
                      } else if (args.nivel == 0) {
                        Navigator.pushNamed(context, "/derrota",
                            arguments: NumeroSorteado(args.numero));
                      } else {
                        geraDica(chute, args.numero);
                        calculaPontos(chute, args.numero);
                      }
                    },
                    child: const Text("Chutar"))
              ],
            ),
          )),
    );
  }
}
