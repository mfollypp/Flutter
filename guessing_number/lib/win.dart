import 'package:flutter/material.dart';

class Win extends StatefulWidget {
	static const routeName = "/win";

	@override
	State<Win> createState(){
        return _WinState();
    }
}

class totalScore {
	int score = 0;
	totalScore(this.score);
}

class _WinState extends State<Win> {
	@override
	Widget build(BuildContext context) {
		var tScore = ModalRoute.of(context)!.settings.arguments as totalScore;
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
									fontSize: 30,
                                    fontWeight: FontWeight.bold
								),
							),
							Text(
								"Score: ${tScore.score}",
								style: TextStyle(
									fontSize: 25,
                                    fontWeight: FontWeight.bold
								),
							),
							SizedBox(
								width: 150,
								height: 50,
								child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.purple[400]
                                    ),
									onPressed: () {
										Navigator.pushNamed(context, "/menu");
									},
									child: const Text(
										"Back",
										style: TextStyle(
											fontSize: 30,
                                            fontWeight: FontWeight.bold
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
