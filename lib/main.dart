import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void answerQuestion() {
    print('Answer chosen');
  }

  @override // Dart overrides the StateLessWidget build method
  Widget build(BuildContext context) {
    
    var questions = [
      'What\'s your favorite coor?',
      'What\'s your favorite animal',
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My Flutter App"),),
      body: Column(children: <Widget>[
          Text('The question!'),
            RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion,),
            RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion,),
            RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion,),
          ],
        ),
      ),
    );
  }
}