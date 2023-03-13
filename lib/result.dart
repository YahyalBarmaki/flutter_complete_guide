import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultStore;
  final Function _resetQuiz;

  String get resultPhrase {
    String resultText;
    if (resultStore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultStore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultStore <= 16) {
      resultText = 'You are ... strange';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  Result(this.resultStore,this._resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: _resetQuiz, child: Text("Restart Quiz!"))
        ],
      ),
    );
  }
}
