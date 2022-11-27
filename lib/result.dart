import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = "You did it";
    if (resultScore <= 8) {
      resultText = "You are awesome ! \n Your score is ${resultScore}";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable \n Your score is ${resultScore}";
    } else {
      resultText = "You are so bad ! \n Your score is ${resultScore}";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
