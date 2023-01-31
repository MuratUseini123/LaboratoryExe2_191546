
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetFunc;
  const Result({super.key, required this.resultscore, required this.resetFunc});

  String get resultPhrase {
    var resultText = 'you did it';
    if (resultscore <= 8) {
      resultText = 'you did well';
    } else if (resultscore <= 12) {
      resultText = 'you are good';
    } else if (resultscore <= 16) {
      resultText = 'you can do better ';
    } else {
      resultText = 'give it one more try';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase, style: const TextStyle(fontSize: 25, fontFamily: 'Monospace'),textAlign: TextAlign.center,),
          TextButton(child: Text('Reset quiz!'), onPressed: (){
            resetFunc();
          },)
        ],
      ),
    );
  }
}
