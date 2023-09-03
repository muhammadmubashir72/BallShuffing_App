import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Balls Shuffling App',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
    );
  }
}

// ignore: non_constant_identifier_names
String Ball = "assets/ball1.png";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Balls Shuffel App",
            style: TextStyle(
                fontSize: 40,
                color: Colors.red,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Text(
                  "^-^-^-^Ask Me Everyhing^-^-^-^",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),

              // ignore: sized_box_for_whitespace
              Container(
                height: 250,
                width: 250,
                child: Image.asset(Ball),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    int num = Random().nextInt(5) + 1;
                    Ball = "assets/ball$num.png";
                  });
                },
                child: const Text("ASK",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
              ),
            ],
          ),
        ));
  }
}
