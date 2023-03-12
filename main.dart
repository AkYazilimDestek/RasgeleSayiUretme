import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : RandomApp(),
    );
  }
}

class RandomApp extends StatefulWidget {
  const RandomApp({Key? key}) : super(key: key);

  @override
  State<RandomApp> createState() => _RandomAppState();
}

class _RandomAppState extends State<RandomApp> {

  late int RandomNumber = 0;

  void RandomNumberFunction() {
    Timer.periodic(Duration(seconds: 1), (timer) {

      var minValue = 1;
      var maxValue = 2;

      setState(() {
        RandomNumber = minValue + new Random().nextInt(maxValue - minValue);
      });

    });
  }

  void initState() {
    super.initState();
    RandomNumberFunction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RASGELE SAYI UYGULAMASI"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child : Center(
            child: Text("$RandomNumber",style: TextStyle(
              fontSize: 49,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
          ),
        ),
      ),
    );
  }
}

