import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Loss extends StatefulWidget {
	static const routeName = "/loss";

	@override
	State<Loss> createState() => _LossState();
}

class NumeroSorteado {
	int num = 0;

	NumeroSorteado(this.num);
}

class _LossState extends State<Loss> {
	@override
	Widget build(BuildContext context) {
		var n = ModalRoute.of(context)!.settings.arguments as NumeroSorteado;
		return Scaffold(
			backgroundColor: Colors.white,
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.spaceEvenly,
					children: [
						Text(
							"More Luck Next Time!",
							style: TextStyle(
								fontSize: 25
							),
						),
						Text(
							"Score: " + n.num.toString(),
							style: TextStyle(
								fontSize: 30
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
