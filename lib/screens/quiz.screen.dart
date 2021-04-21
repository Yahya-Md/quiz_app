import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz.model.dart';
import 'package:quiz_app/widgets/answer.widget.dart';
import '../widgets/question.widget.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _index = 0;
  double _score = 0;

  void incrementIndex() {
    if (_index < quiz.length) {
      setState(() {
        _index++;
      });
    }
  }

  final List<Map<String, Object>> quiz = quizData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: (this._index < this.quiz.length)
                ? Column(
                    children: [
                      QuestionWidget(
                        quiz[_index]["question"],
                      ),
                      ...(quiz[_index]["answers"] as List<String>).map((item) {
                        return AnswerWidget(item, () {
                          if (item == quiz[_index]["correctAnswer"]) {
                            this._score = this._score + quiz[_index]["score"];
                          }
                          incrementIndex();
                        });
                      }),
                    ],
                  )
                : Text(
                    "Your score is ${this._score}",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                this._index = 0;
                this._score = 0;
              });
            },
            child: Icon(
              Icons.repeat,
            ),
          )
        ],
      ),
    );
  }
}
