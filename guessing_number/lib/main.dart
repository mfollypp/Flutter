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
				"/menu": (context) => Menu(),
				"/level": (context) => Level(),
				"/play": (context) => Play(),
				"/win": (context) => Win(),
				"/loss": (context) => Loss()
			},
  		)
	);
}