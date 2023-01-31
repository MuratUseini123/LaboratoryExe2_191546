import 'package:flutter/material.dart';


class ClothesAnswer extends StatelessWidget {

  final String answer;
  final Function func;
  const ClothesAnswer({super.key, required this.answer, required this.func});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
          onPressed: (){
            func();
          },
          child: Text(answer, style: const TextStyle(color: Colors.red),),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
