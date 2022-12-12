import 'package:flutter/material.dart';
import 'package:guessing_number/menu.dart';
import 'package:guessing_number/level.dart';
import 'package:guessing_number/play.dart';
import 'package:guessing_number/win.dart';
import 'package:guessing_number/loss.dart';

void main() {
	runApp(
		MaterialApp(
			debugShowCheckedModeBanner: false,
			title: "Guessing Number Game",
			initialRoute: "/menu",
			routes: {
				"/menu": (context){ 
                    return Menu();
                },
				"/level": (context) {
                    return Level();
                },
				"/play": (context) {
                    return Play();
                },
                "/loss": (context) {
                    return Loss();
                },
				"/win": (context) {
                    return Win();
                }
			},
  		)
	);
}