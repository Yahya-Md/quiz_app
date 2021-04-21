import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  String _title;


  QuestionWidget(this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _title,
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}
