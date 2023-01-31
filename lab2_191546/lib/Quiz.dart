import 'package:flutter/material.dart';
import './Answer.dart';
import './Question.dart';


class Quiz extends StatelessWidget {

   final Function func;
   final List<Map<String, Object>> questions;
   final int index;

   const Quiz({super.key, required this.func,required this.questions, required this.index});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClothesQuestion(questionText: questions[index]['questionText']as String),
        ...(questions[index]['answers']as List<Map<String,Object>>).map((answerr){
          return ClothesAnswer(func: () => func(answerr['score']), answer: answerr['text'] as String);
        }).toList()
      ],
    );
  }
}
