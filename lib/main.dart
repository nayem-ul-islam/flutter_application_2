import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyButton(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> englishNumbers = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten'
  ];
  String defaultText = 'English Numbers';

  void displayENumbers() {
    setState(() {
      defaultText = englishNumbers[counter];
      if (counter < 9) {
        counter++;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Stateful APP'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                defaultText,
                style: TextStyle(fontSize: 30.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                onPressed: displayENumbers,
                child: Text(
                  'Call Number',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.orange),
              )
            ],
          ),
        ),
      ),
    );
  }
}
