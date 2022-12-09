import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Win extends StatefulWidget {
	static const routeName = "/win";

	@override
	State<Win> createState() => _WinState();
}

class totalScore {
	int score = 0;
	totalScore(this.score);
}

class _WinState extends State<Win> {
	@override
	Widget build(BuildContext context) {
		var p = ModalRoute.of(context)!.settings.arguments as totalScore;
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
								"Congrats You Won!",
								style: TextStyle(
									fontSize: 30
								),
							),
							Text(
								"Score: " + p.score.toString(),
								style: TextStyle(
									fontSize: 25
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
