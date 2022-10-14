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