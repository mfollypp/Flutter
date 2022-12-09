import 'package:flutter/material.dart';
import 'package:number_guess/menu.dart';
import 'package:number_guess/level.dart';
import 'package:number_guess/play.dart';
import 'package:number_guess/win.dart';
import 'package:number_guess/loss.dart';

void main() {
	runApp(
		MaterialApp(
			debugShowCheckedModeBanner: false,
			title: "Number Guess Game",
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