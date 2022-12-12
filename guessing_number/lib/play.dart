import 'package:guessing_number/level.dart';
import 'package:guessing_number/win.dart';
import 'package:flutter/material.dart';
import 'loss.dart';

class Play extends StatefulWidget {
	static const routeName = "/play";

	@override
	State<Play> createState(){
        return _PlayState();
    }
}

class _PlayState extends State<Play> {
	TextEditingController controller = TextEditingController();
	int guess = 0;
	String _message = "Whats the hidden number from 0 to 99?";
	int _player_score = 1000;

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
		_player_score -= dif.abs();
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
						mainAxisAlignment: MainAxisAlignment.start,
						children: [
                            const Padding(padding: EdgeInsets.only(top: 100)),
							Text(
								"Left Tries:",
								style: const TextStyle(
									fontSize: 30,
                                    fontWeight: FontWeight.bold
								),
							),
                            Text(
								"${Level.tries}",
								style: const TextStyle(
									fontSize: 30,
                                    fontWeight: FontWeight.bold
								),
							),
                            const Padding(padding: EdgeInsets.only(top: 50)),
							Text(
								_message,
								style: const TextStyle(
									fontSize: 25,
                                    fontWeight: FontWeight.bold
								),
							),
                            const Padding(padding: EdgeInsets.only(top: 50)),
							SizedBox(
								width: 150,
								child: TextField(
									controller: controller,
									textAlign: TextAlign.center,
                                    textAlignVertical: TextAlignVertical.top,
									decoration: const InputDecoration(
										border: UnderlineInputBorder(),
										label: Center(
											child: Text(
												"Enter Guess:",
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
                            const Padding(padding: EdgeInsets.only(top: 120)),
							SizedBox(
								width: 150,
								height: 50,
								child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.purple[400]
                                    ),
									onPressed: () {
										setState(() {
											Level.tries--;
											controller.clear();
										});
										if (guess == Level.random_number) {
											Navigator.pushNamed(context, "/win",
												arguments: totalScore(_player_score));
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
											fontSize: 30,
                                            fontWeight: FontWeight.bold
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