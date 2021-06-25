import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget>createState() {

    return _MyAppState();
  }
}

//add a pointer to the app class in <> brackets
class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override // Dart overrides the StateLessWidget build method
  Widget build(BuildContext context) {
    
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal',
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("First App")),
      body: Column(children: <Widget>[
          Question(questions[_questionIndex],),
            RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion,),
            RaisedButton(child: Text("Answer 2"), onPressed: _answerQuestion,),
            RaisedButton(child: Text("Answer 3"), onPressed: _answerQuestion,),
          ],
        ),
      ),
    );
  }
}