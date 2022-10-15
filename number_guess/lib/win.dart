import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Win extends StatefulWidget {
	static const routeName = "/win";

	@override
	State<Win> createState() => _WinState();
}

class Pontuacao {
	int pontos = 0;
	Pontuacao(this.pontos);
}

class _WinState extends State<Win> {
	@override
	Widget build(BuildContext context) {
		var p = ModalRoute.of(context)!.settings.arguments as Pontuacao;
		return Scaffold(
			backgroundColor: Colors.white,
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.spaceEvenly,
					children: [
						Text(
							"Congrats!!!",
							style: TextStyle(
								fontSize: 30
							),
						),
						Text(
							"Score: " + p.pontos.toString(),
							style: TextStyle(
								fontSize: 25
							),
						),
						SizedBox(
							height: 25,
							width: 70,
							child: ElevatedButton(
								onPressed: () {
									Navigator.pushNamed(context, "/menu");
								},
								child: const Text("Back"),
							),
						)
					]
				)
			)
		);
  	}
}
