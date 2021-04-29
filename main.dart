import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var rnd, randomI;

  List images = [
    Image.asset("images/Phlox.jpg"),
    Image.asset("images/Phlox_seed.jpg"),
    Image.asset("images/Pots.jpg"),
    Image.asset("images/Soil.jpg"),
    Image.asset("images/Sun.jpg"),
    Image.asset("images/Watering.jpg"),
  ];

  randomImage() {
    rnd = Random().nextInt(images.length);
    setState(() {
      randomI = images[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 30,
          backgroundColor: Colors.grey,
          title: Text(
            "Flower Life",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),

        body: GestureDetector(
          onTap: () {
            randomImage();
          },
          child: Center(
            child: Container(
              color: Colors.black87,
              width: 300,
              height: 300,
              child: randomI,
            ),
          ),
        ),
      ),
    );
  }
}