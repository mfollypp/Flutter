import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Loss extends StatefulWidget {
	static const routeName = "/loss";

	@override
	State<Loss> createState() => _LossState();
}

class randomNumber {
	int num = 0;

	randomNumber(this.num);
}

class _LossState extends State<Loss> {
	@override
	Widget build(BuildContext context) {
		var n = ModalRoute.of(context)!.settings.arguments as randomNumber;
		return Container(
			constraints: const BoxConstraints.expand(),
			decoration: const BoxDecoration(
				image: DecorationImage(
					image: AssetImage("images/numbers_background.jpg"), 
					fit: BoxFit.cover
				)
			),
			child: Scaffold(
				backgroundColor: Colors.transparent,
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
								width: 150,
								height: 50,
								child: ElevatedButton(
									onPressed: () {
										Navigator.pushNamed(context, "/menu");
									},
									child: const Text(
										"Back",
										style: TextStyle(
											fontSize: 30
										),
									),
								),
							)
						]
					)
				)
			)
		);
	}
}
