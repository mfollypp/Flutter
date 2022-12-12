import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
	static const routeName = "/menu";
    
	@override
	State<Menu> createState(){ 
        return _MenuState();
    }
}

class _MenuState extends State<Menu> {
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
								"Guessing Number Game",
								style: TextStyle(
									fontSize: 40,
                                    fontWeight: FontWeight.bold
								),
							),
							const Padding(padding: EdgeInsets.only(top: 50)),
							SizedBox(
								width: 150,
								height: 50,
								child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.purple[400]
                                    ),
									onPressed: () {
										Navigator.pushNamed(context, "/level");
									},
									child: const Text(
										"Play",
										style: TextStyle(
											fontSize: 30,
                                            fontWeight: FontWeight.bold
										),
									),
								),
							),
						]
					)
				)
			)
		);
	}
}