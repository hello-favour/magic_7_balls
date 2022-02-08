import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int magicBall = 7;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Ask Me Everything"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          magicBall = Random().nextInt(7) + 1;
                        });
                      },
                      child: Image(
                        image: AssetImage("assets/images/ball$magicBall.png"),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          magicBall = Random().nextInt(7) + 1;
                        });
                      },
                      child: Image(
                        image: AssetImage("assets/images/ball$magicBall.png"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
