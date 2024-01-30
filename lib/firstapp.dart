import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: <Widget>[
        Container(
          padding: const EdgeInsets.all(40.0),
          color: Colors.cyan,
          child: const Text('ONE'),
        ),
        Container(
          padding: const EdgeInsets.all(40.0),
          color: Colors.purple,
          child: const Text('TWO'),
        ),
        Container(
          padding: const EdgeInsets.all(40.0),
          color: Colors.amber,
          child: const Text('THREE'),
        ),
      ],
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () { },
        backgroundColor: Colors.redAccent,
        child: const Text('Click'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: const BorderSide(
                color: Colors.white,
                width: 1,
                style: BorderStyle.solid
            ),
          ),
            ),
    );
  }
}

