import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
    const Home({super.key});

    @override
    State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

    String _message = "Click below to generate a spoiler";
    List<String> messages = [
        "DiCaprio dies in Titanic and yes, the door could fit both of them",
        "Hodor got traumatized when continuously screaming 'hold the door', thats why he says 'Hodor'",
        "Eren Yeager guided his father to do all the things that happened in the past",
        "Kylo Ren killed Han Solo on Star Wars episode VII",
    ];
    void _generate_text() {
        int i = Random().nextInt(messages.length);
        setState(() {
            this._message = messages[i];
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 51, 51, 51),
            appBar: AppBar(
                centerTitle: true,
                title: Text("Spoiler Session"),
                foregroundColor: Colors.black,
                backgroundColor: Color.fromARGB(255, 255, 216, 45)
            ),
            body: Center(
                child: Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                            Image.asset(
                                "images/spoiler_alert.png", 
                                scale: 1,
                                fit: BoxFit.fill,
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 40), 
                                child: Text(
                                    _message,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 40), 
                                child: Align(
                                    alignment: Alignment.center,
                                    child: ElevatedButton(
                                        onPressed: () => _generate_text(),
                                        child: Text(
                                            "New Spoiler",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                            ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(255, 255, 216, 45)
                                        ),
                                    ),
                                )
                            )
                        ],
                    )
                )
            )
        );
    }
}