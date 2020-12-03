import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('image/avatar.jpg'),
              ),
              Text(
                'Samia ELKHAYATY',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Ingénieur en Technologie pour la santé',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 15.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                color: Colors.white,
                //alignment: Alignment.center,
                //height: 660.0,
                //width: 100.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                //padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    size: 25.0,
                    color: Colors.teal.shade900,
                  ),
                  //SizedBox(
                  //  width: 10.0,
                  title: Text(
                    "+33 6 58 90 95 58",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                //alignment: Alignment.center,
                //height: 660.0,
                //width: 100.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                //padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                    color: Colors.teal.shade900,
                  ),
                  //SizedBox(
                  //  width: 10.0,
                  title: Text(
                    "elkhayatysamia@gmail.com",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 17.0,
                      fontFamily: 'Source Sans Pro',
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
