import 'package:flutter/material.dart';

class Loss extends StatefulWidget {
	static const routeName = "/loss";
    
	@override
	State<Loss> createState(){
        return _LossState();
    }
}

class randomNumber {
	var n = 0;
	randomNumber(this.n);
}

class _LossState extends State<Loss> {
	@override
	Widget build(BuildContext context) {
		var rand = ModalRoute.of(context)!.settings.arguments as randomNumber;
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
							const Text(
								"More Luck Next Time!",
								style: TextStyle(
									fontSize: 25,
                                    fontWeight: FontWeight.bold
								),
							),
							Text(
								"Hidden number was: ${rand.n}",
								style: const TextStyle(
									fontSize: 30,
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
