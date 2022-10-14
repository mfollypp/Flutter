import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Inicial extends StatefulWidget {
  static const routeName = "/inicial";
  @override
  State<Inicial> createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/fundo.png"), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Container(
                    child: _colorize(),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/dificuldade");
                      },
                      child: const Text("Jogar"),
                    ),
                  ),
                ]))));
  }
}

Widget _colorize() {
  return SizedBox(
    child: Center(
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            'Jogo da Adivinhação',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
        ],
        isRepeatingAnimation: true,
        repeatForever: true,
      ),
    ),
  );
}

List<MaterialColor> colorizeColors = [
  Colors.red,
  Colors.yellow,
  Colors.purple,
  Colors.blue,
];

const colorizeTextStyle = TextStyle(
  fontSize: 65.0,
  fontWeight: FontWeight.w800,
  fontFamily: 'SF',
);
