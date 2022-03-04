import 'package:flutter/material.dart';

// Question Model
class Question {
  final String question;
  List<Answers> answers;
  Question({
    required this.question,
    required this.answers,
  });
}

//Answers Model
class Answers {
  String answer;
  bool score;
  Answers({
    required this.answer,
    required this.score,
  });
}

//Topic Model
class Topic {
  String name;
  Widget widget;
  Topic({
    required this.name,
    required this.widget,
  });
}

//Chapter Model
class Chapter {
  String chapterName;
  List<Topic> topics;
  Chapter({
    required this.chapterName,
    required this.topics,
  });
}
