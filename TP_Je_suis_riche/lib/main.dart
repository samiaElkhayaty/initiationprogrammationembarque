import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Tu fais quoi ?"),
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey,
      body: Image(
        image: NetworkImage('https://i0.wp.com/www.kafunel.com/wp-content'
            '/uploads/2017/12/humourinsolitedroleou-pas-droles.'
            'jpg?fit=968%2C645&ssl=1'),
      ),
    ),
  ));
}
