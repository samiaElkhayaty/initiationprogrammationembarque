import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 568.0,
                    width: 100.0,
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.red,
                    child: Text("Bloc 1"),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 100.0,
                        width: 100.0,
                        margin: EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
                        color: Colors.yellow,
                        child: Text("bloc 3"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 100.0,
                        width: 100.0,
                        margin: EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
                        color: Colors.green,
                        child: Text("bloc 4"),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 568.0,
                    width: 100.0,
                    margin: EdgeInsets.fromLTRB(39.0, 0.0, 0.0, 0.0),
                    color: Colors.blue,
                    child: Text("bloc 2"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
