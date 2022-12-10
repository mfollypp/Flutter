import 'package:flutter/material.dart';
import 'dart:math';

class Level extends StatefulWidget {
	static const routeName = "/level";

	static int random_number = 0;
	static int tries = 0;

	static SelectLevel(int n) {
		tries = n;
		random_number = Random().nextInt(100);
	}

	@override
	State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {

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
						mainAxisAlignment: MainAxisAlignment.center, 
						children: [
							const Text(
								"Select game level",
								style: TextStyle(
									fontSize: 40,
									color: Colors.black,
									fontWeight: FontWeight.bold),
							),
							const Padding(padding: EdgeInsets.only(top: 100)),
							SizedBox(
								width: 150,
								height: 50,
								child: ElevatedButton(
									onPressed: () {
										Navigator.pushNamed(context, "/play",
											arguments: Level.SelectLevel(20)
										);
									},
									child: const Text(
										"Easy",
										style: TextStyle(
											fontSize: 30
										),
									),
								),
							),
							const Padding(padding: EdgeInsets.only(top: 30)),
							SizedBox(
								width: 150,
								height: 50,
								child: ElevatedButton(
									onPressed: () {
										Navigator.pushNamed(context, "/play",
											arguments: Level.SelectLevel(10)
										);
									},
									child: const Text(
										"Medium",
										style: TextStyle(
											fontSize: 30
										),
									),
								),
							),
							const Padding(padding: EdgeInsets.only(top: 30)),
							SizedBox(
								width: 150,
								height: 50,
								child: ElevatedButton(
									onPressed: () {
										Navigator.pushNamed(context, "/play",
											arguments: Level.SelectLevel(6)
										);
									},
									child: const Text(
										"Hard",
										style: TextStyle(
											fontSize: 30
										),
									),
								),
							),
							const Padding(padding: EdgeInsets.only(top: 100)),
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
					),
				),
			),
		);
	}
}