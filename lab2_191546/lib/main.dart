import 'package:flutter/material.dart';

import './Quiz.dart';
import './Result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const QuizHome(),
    );
  }
}

class QuizHome extends StatefulWidget {
  const QuizHome({Key? key}) : super(key: key);

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  var questions = [
    {
      'questionText': 'What\'s your favorite jeans color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Grey', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite jeans company?',
      'answers': [
        {'text': 'Levi\'s', 'score': 3},
        {'text': 'Mavi Jeans', 'score': 11},
        {'text': 'Toteme', 'score': 5},
        {'text': 'MadeWell', 'score': 9},
      ],
    },
    {
      'questionText': 'Do you like ripped jeans?',
      'answers': [
        {'text': 'Yes i do', 'score': 1},
        {'text': 'I like them but i don\'t wear them', 'score': 5},
        {'text': 'I dont like them', 'score': 10},
      ],
    },
  ];
  var qindex = 0;
  var _totalScore = 0;
  void changeQuestion(int score) {
    _totalScore +=score;
    setState(() {
      qindex = qindex + 1;
    });
  }

  void resetQuiz(){
    setState(() {
      _totalScore = 0;
      qindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab 2 191546'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: qindex < questions.length
            ? Quiz(
                questions: questions,
                func: changeQuestion,
                index: qindex,
              )
            : Result(resultscore: _totalScore,resetFunc: resetQuiz,),
      ),
    );
  }
}
