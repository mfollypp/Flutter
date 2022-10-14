import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jankenpo/pages/home.dart';

void main() {
    runApp(MaterialApp(
        title: "Jankenpo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 226, 226, 226)),
        home: HomePage(),
    ));
}