import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.indigo,
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _Ball createState() => _Ball();
}

class _Ball extends State<Ball> {
  @override
  int face = 3;

  void nouvelleFace() {
    face = Random().nextInt(5) + 1;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  nouvelleFace();
                });
              },
              child: Image.asset("image/ball$face.png"),
            ),
          ),
        ],
      ),
    );
  }
}
