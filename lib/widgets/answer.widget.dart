import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  String _answer;
  Function onPress;
  Map<String, Object> quiz;

  AnswerWidget(this._answer, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(_answer),
      ),
    );
  }
}
