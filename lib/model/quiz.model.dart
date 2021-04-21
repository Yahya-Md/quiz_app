class Quiz {
  int id;
  String question;
  List<String> answers;
  String correctAnswer;
  bool isCorrect;
  int score;

  //Quiz();
  Quiz(
      {this.id,
      this.question,
      this.answers,
      this.correctAnswer,
      this.isCorrect,
      this.score});
}

const quizData = [
  {
    "id": 1,
    "question": "What country has the most islands in the world?",
    "answers": ["Italy", "Sweden", "Vietnam", "Maldive"],
    "correctAnswer": "Sweden",
    "isCorrect": "false",
    "score": 10
  },
  {
    "id": 2,
    "question": "What’s the smallest country in the world?",
    "answers": ["Vatican", "Spain", "Ukraine", "Mexico"],
    "correctAnswer": "Vatican",
    "isCorrect": "false",
    "score": 10
  },
  {
    "id": 3,
    "question": "What’s the capital of Canada?",
    "answers": ["Quebec", "Ottawa", "Toronto", "Victoria"],
    "correctAnswer": "Ottawa",
    "isCorrect": "false",
    "score": 10
  },
  {
    "id": 4,
    "question": "Name the longest river in the world?",
    "answers": ["Nile", "Amazon", "Yangtze", "Mississippi"],
    "correctAnswer": "Nile",
    "isCorrect": "false",
    "score": 10
  },
];
