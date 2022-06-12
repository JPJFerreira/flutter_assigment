// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import 'package:flutter_assigment/mybutton.dart';
import 'package:flutter_assigment/mytext.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _title = 'My first flutter project';
  String _text = 'This is my first flutter project';

  void _changeTitle() {
    setState(() {
      _text = 'change the text of project';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(_title),
          ),
          body: Center(
            child: Column(
              children: [MyText(_text), MyButton(_changeTitle)],
            ),
          )),
    );
  }
}
