import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Menu extends StatefulWidget {
	static const routeName = "/menu";
	@override
	State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
	@override
	Widget build(BuildContext context) {
		return Container(
			constraints: const BoxConstraints.expand(),
			decoration: const BoxDecoration(
				image: DecorationImage(
					image: AssetImage("images/background.png"), fit: BoxFit.cover
				)
			),
			child: Scaffold(
				body: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Container(
								child: Text(
									"Number Guess Game"
								)
							),
							SizedBox(
								height: 150,
							),
							SizedBox(
								child: ElevatedButton(
									onPressed: () {
										Navigator.pushNamed(context, "/level");
									},
									child: const Text("Play"),
								),
							),
						]
					)
				)
			)
		);
	}
}