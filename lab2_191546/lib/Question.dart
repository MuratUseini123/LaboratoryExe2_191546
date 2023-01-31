import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {
  final String questionText;

  const ClothesQuestion({super.key, required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(15),
          child: Text(
            questionText,
            style: const TextStyle(
              fontSize: 30,
              fontFamily: 'Monospace',
              color: Colors.blue
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 50,)
      ],
    );
  }
}
