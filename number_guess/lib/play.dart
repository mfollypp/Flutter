import 'package:number_guess/level.dart';
import 'package:number_guess/win.dart';
import 'package:flutter/material.dart';

import 'loss.dart';

class Play extends StatefulWidget {
	String _message = "";
	static const routeName = "/play";

	@override
	State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
	TextEditingController controller = TextEditingController();
	int chute = 0;
	String _message = "Are you good at guessing?";
	int _pontos = 1000;

	void geraDica(chute, numero) {
		if (chute - numero >= 25) {
			_message = "Your guess was way bigger";
		} else if (chute - numero > 0 && chute - numero < 25) {
			_message = "Your guess was bigger";
		} else if (numero - chute > 0 && numero - chute < 25) {
			_message = "Your guess was smaller";
		} else {
			_message = "Your guess was way smaller!";
		}
	}

	void calculaPontos(chute, numero) {
		int dif = chute - numero;
		_pontos -= dif.abs();
	}

	@override
	Widget build(BuildContext context) {
		return Container(
			constraints: const BoxConstraints.expand(),
			decoration: const BoxDecoration(
				image: DecorationImage(
					image: AssetImage("images/background.png"), 
					fit: BoxFit.cover
				)
			),
			child: Scaffold(
				body: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.spaceEvenly,
						children: [
							Text(
								"Left tries: " + Level.nivel.toString(),
								style: TextStyle(
									fontSize: 30
								),
							),
							Text(
								_message,
								style: TextStyle(
									fontSize: 25
								),
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
												"Enter a guess:",
												style: TextStyle(
													fontSize: 20
												),
											),
										),
									),
									onChanged: (n) {
										setState(() {
											chute = int.parse(n);
										});
									},
								)
							),
							ElevatedButton(
								onPressed: () {
									setState(() {
										Level.nivel--;
										controller.clear();
									});
									if (chute == Level.numero) {
										Navigator.pushNamed(context, "/win",
											arguments: Pontuacao(_pontos));
									} else if (Level.nivel == 0) {
										Navigator.pushNamed(context, "/loss",
											arguments: NumeroSorteado(Level.numero));
									} else {
										geraDica(chute, Level.numero);
										calculaPontos(chute, Level.numero);
									}
								},
								child: const Text("Enter Guess"))
						],
					),
				)
			),
		);
  	}
}