import 'package:flutter/material.dart';
import './screens/quiz.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'QuizApp',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        accentColor: Colors.lightBlue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Demo App"),
      ),
      body: Container(
        child: QuizScreen(),
      ),
    );
  }
}
