import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    
    List maos = ["pedra", "papel", "tesoura"];
    String _message = "Choose an option:";
    // String _imagePath = "images/default.png";
    var imagePath = AssetImage("images/default.png");

    void _play(String mao) {
        int i = Random().nextInt(maos.length);

        // this._imagePath = "images/" + maos[i] + ".png";
        this.imagePath = AssetImage("images/${maos[i]}.png");

        if((mao == "pedra" && maos[i] == "tesoura") || (mao == "papel" && maos[i] == "pedra") || (mao == "tesoura" && maos[i] == "papel")) {
            setState(() {
                this._message = "User Wins!";
            });
        } else if ((mao == "pedra" && maos[i] == "papel") || (mao == "papel" && maos[i] == "tesoura") || (mao == "tesoura" && maos[i] == "pedra")) {
            setState(() {
                this._message = "Machine Wins!";
            });
        } else {
            setState(() {
                this._message = "Its a Draw!";
            });
        }
    }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Jankenpo"),
            backgroundColor: Colors.blue,
        ),
        body: Container(
            padding: EdgeInsets.only(bottom: 75),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                            "App Choice:",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                        ),
                    ),
                    // Image.asset(_imagePath, height: 200),
                    Image(image: imagePath, height: 200,),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                            _message,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                        ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            GestureDetector(
                                onTap: () => _play("pedra"),
                                child: Image.asset("images/pedra.png", height: 120,),
                            ),
                            GestureDetector(
                                onTap: () => _play("papel"),
                                child: Image.asset("images/papel.png", height: 120,),
                            ),
                            GestureDetector(
                                onTap: () => _play("tesoura"),
                                child: Image.asset("images/tesoura.png", height: 120,),
                            ),
                        ],
                    )
                ],
            ),
        ),
    );
  }
}