import 'package:number_guess/derrota.dart';
import 'package:number_guess/dificuldade.dart';
import 'package:number_guess/inicial.dart';
import 'package:number_guess/jogo.dart';
import 'package:number_guess/vitoria.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Number Guess Game",
    initialRoute: "/inicial",
    routes: {
      "/inicial": (context) => Inicial(),
      "/dificuldade": (context) => Dificuldade(),
      "/jogo": (context) => Jogo(),
      "/vitoria": (context) => Vitoria(),
      "/derrota": (context) => Derrota()
    },
  ));
}


// import 'package:number_guess/pages/home.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//     runApp(MaterialApp(
//         title: "Guess the Number",
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 88, 88, 88)),
//         home: Home(),
//     ));
// }