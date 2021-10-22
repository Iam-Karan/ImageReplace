import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    var image = 1 + random.nextInt(7);
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("Profile"),
            backgroundColor: Colors.blueAccent,
      ),
          body: Center(
            child: InkWell(
              onTap: () {
                reDraw();
              },
              child: Ink.image(
                image:
                AssetImage("images/ball" + image.toString() + ".png"),
                width: 250,
                height: 250,
              ),
            ),
          ),
    ));
  }

  void reDraw() {
    setState(() {
      this.number++;
    });
  }
}
