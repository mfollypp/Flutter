import 'package:guessing_number/level.dart';
import 'package:guessing_number/win.dart';
import 'package:flutter/material.dart';
import 'loss.dart';

class Play extends StatefulWidget {
	static const routeName = "/play";

	@override
	State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
	TextEditingController controller = TextEditingController();
	int guess = 0;
	String _message = "Are you good at guessing?";
	int _score = 1000;

	void hint(guess, random_number) {
		if (guess - random_number >= 25) {
			_message = "Your guess was way bigger";
		} else if (guess - random_number > 0 && guess - random_number < 25) {
			_message = "Your guess was bigger";
		} else if (random_number - guess > 0 && random_number - guess < 25) {
			_message = "Your guess was smaller";
		} else {
			_message = "Your guess was way smaller!";
		}
	}

	void countScore(guess, random_number) {
		int dif = guess - random_number;
		_score -= dif.abs();
	}

	@override
	Widget build(BuildContext context) {
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
								"Left tries: ${Level.tries}",
								style: const TextStyle(
									fontSize: 30
								),
							),
							Text(
								_message,
								style: const TextStyle(
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
										label: Center(
											child: Text(
												"Type a guess:",
												style: TextStyle(
													fontSize: 20,
													fontWeight: FontWeight.bold
												),
											),
										),
									),
									onChanged: (n) {
										setState(() {
											guess = int.parse(n);
										});
									},
								)
							),
							SizedBox(
								width: 150,
								height: 50,
								child: ElevatedButton(
									onPressed: () {
										setState(() {
											Level.tries--;
											controller.clear();
										});
										if (guess == Level.random_number) {
											Navigator.pushNamed(context, "/win",
												arguments: totalScore(_score));
										} else if (Level.tries == 0) {
											Navigator.pushNamed(context, "/loss",
												arguments: randomNumber(Level.random_number));
										} else {
											hint(guess, Level.random_number);
											countScore(guess, Level.random_number);
										}
									},
									child: const Text(
										"Enter",
										style: TextStyle(
											fontSize: 30
										),
									)
								)
							)
						],
					),
				)
			),
		);
  	}
}