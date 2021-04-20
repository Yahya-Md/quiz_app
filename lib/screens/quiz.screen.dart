import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [
            Text(
              "Question ?",
              style: TextStyle(fontSize: 32),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Answer 3"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
}
