import 'package:flutter/material.dart';
import 'dart:math';

class Level extends StatefulWidget {
	static const routeName = "/level";

	static int numero = 0;
	static int nivel = 0;

	static SelecionaNivel(int n) {
		nivel = n;
		numero = Random().nextInt(100);
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
					image: AssetImage("images/background.png"), 
					fit: BoxFit.cover
				)
			),
			child: Scaffold(
				body: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center, 
						children: [
							Text(
								"Select game level",
								style: TextStyle(
									fontSize: 25,
									color: Colors.black,
									fontWeight: FontWeight.bold),
							),
							SizedBox(
								height: 100,
							),
							SizedBox(
								height: 30,
								width: 100,
								child: ElevatedButton(
									onPressed: () {
										Navigator.pushNamed(context, "/play",
											arguments: Level.SelecionaNivel(20)
										);
									},
									child: const Text("Easy"),
								),
							),
							SizedBox(
								height: 50,
							),
							SizedBox(
								height: 30,
								width: 100,
								child: ElevatedButton(
									onPressed: () {
										Navigator.pushNamed(context, "/play",
											arguments: Level.SelecionaNivel(10)
										);
									},
									child: const Text("Medium"),
								),
							),
							SizedBox(
								height: 50,
							),
							SizedBox(
								height: 30,
								width: 100,
								child: ElevatedButton(
									onPressed: () {
										Navigator.pushNamed(context, "/play",
											arguments: Level.SelecionaNivel(6)
										);
									},
									child: const Text("Hard"),
								),
							),
							SizedBox(
								height: 150,
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
					),
				),
			),
		);
	}
}