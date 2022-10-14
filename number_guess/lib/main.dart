import 'package:number_guess/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
    runApp(MaterialApp(
        title: "Guess the Number",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 88, 88, 88)),
        home: Home(),
    ));
}