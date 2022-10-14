import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
    const Home({super.key});

    @override
    State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

    int _value = 0;

    @override
    Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Guess the Number"),
            backgroundColor: Colors.grey[500],
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Row(
                    children: [
                        Radio(
                            activeColor: Colors.white,
                            value: 1, 
                            groupValue: _value, 
                            onChanged: (value){
                                setState(() {
                                    _value = value!;
                                });
                            },
                        ),
                        SizedBox(width: 20,),
                        Text("Easy")
                    ],
                ),
                Row(
                    children: [
                        Radio(
                            activeColor: Colors.white,
                            value: 2, 
                            groupValue: _value, 
                            onChanged: (value){
                                setState(() {
                                    _value = value!;
                                });
                            },
                        ),
                        SizedBox(width: 20,),
                        Text("Medium")
                    ],
                ),
                Row(
                    children: [
                        Radio(
                            activeColor: Colors.white,
                            value: 3, 
                            groupValue: _value, 
                            onChanged: (value){
                                setState(() {
                                    _value = value!;
                                });
                            },
                        ),
                        SizedBox(width: 20,),
                        Text("Hard")
                    ],
                ),
            ],
        ),
    );
  }
}