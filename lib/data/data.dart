// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

import 'package:my_notes/widgets/widgets.dart';

final applicationName = "Operating System Notes";

final chapters = [
  "Introduction",
  "Concurrent Processes",
  "CPU Scheduling",
  "Memory management",
  "I/O Management and Disk Scheduling",
];

List topic1 = [
  "Operating System & Function",
  "Classifiation of Operating System",
  "Operating System Structure",
  "System Components",
  "Operating System Services",
  "Reenterent Kernels",
  "Quiz1",
];

List topic2 = [
  "Process Concept",
  "Principal of Concurrency",
  "Producer/Consumer Problem",
  "Mutual Exclution",
  "Critical Section Problem",
  "Dekker's Solution",
  "PeterSon's Solution",
  "Semaphores",
  "Test and Set Operation",
  "Classical Problem in Concurrency",
  "Inter Process Communicationn",
  "Process Generation",
  "Quiz2",
];
List topic3 = [
  "Scheduling Concepts",
  "Performance Criteria",
  "Process States",
  "Process Transition Diagram",
  "Schedulers",
  "Process Control Block",
  "Process Address Space",
  "Process Identification Informatiion",
  "Threads and their Management",
  "Scheduling Algorithms",
  "MultiProcessor Scheduling",
  "Deadlock",
  "Quiz3",
];
List topic4 = [
  "Base Bare Machine",
  "Resident Monitor",
  "Multiprogramming with Fixed Partition",
  "MultiProgramming with Variable Partition",
  "Protection Scemes",
  "Paging",
  "Segmenttaion",
  "Paged Segmentation",
  "Virtual Memory Concepts",
  "Demand Paging",
  "Page Replacement Algorithms",
  "Thrasing",
  "Cache Memory Organization",
  "Locality of Reference",
  "Quiz4",
];
List topic5 = [
  "I/O Devices",
  "I/O Subsystems",
  "I/O Bufferings",
  "Disk Storage and Disk Scheduling",
  "RAID",
  "File System",
  "File System Implementation",
  "File System Protection and Security",
  "Quiz",
];
List topicWidget1 = [
  TopicName(
    title: topic1[0],
  ),
  Text("Topic 12"),
  Text("Topic 13"),
  Text("Topic 14"),
  Text("Topic 15"),
  Text("Topic 16"),
  Quiz1(),
];
List topicWidget2 = [
  Text("topic 21"),
  Text("topic 22"),
  Text("topic 23"),
  Text("topic 24"),
  Text("topic 25"),
  Text("topic 26"),
  Text("topic 27"),
  Text("topic 28"),
  Text("topic 29"),
  Text("topic 2a"),
  Text("topic 2b"),
  Text("topic 2c"),
  Text("topic 2d"),
];
List topicWidget3 = [
  Text("topic 31"),
  Text("topic 32"),
  Text("topic 33"),
  Text("topic 34"),
  Text("topic 35"),
  Text("topic 36"),
  Text("topic 37"),
  Text("topic 38"),
  Text("topic 39"),
  Text("topic 3a"),
  Text("topic 3b"),
  Text("topic 3c"),
  Text("topic 3d"),
];
List topicWidget4 = [
  Text("topic 41"),
  Text("topic 42"),
  Text("topic 43"),
  Text("topic 44"),
  Text("topic 45"),
  Text("topic 46"),
  Text("topic 47"),
  Text("topic 48"),
  Text("topic 49"),
  Text("topic 4a"),
  Text("topic 4b"),
  Text("topic 4c"),
  Text("topic 4d"),
  Text("topic 4e"),
  Text("topic 4f"),
];
List topicWidget5 = [
  Text("topic 51"),
  Text("topic 52"),
  Text("topic 53"),
  Text("topic 54"),
  Text("topic 55"),
  Text("topic 56"),
  Text("topic 57"),
  Text("topic 58"),
  Text("topic 59"),
];

final questions1 = [
  {
    'question': 'Flutter is a:',
    'answers': [
      {'answerText': 'Framework', 'score': true},
      {'answerText': 'Programming Language', 'score': false},
      {'answerText': 'Operating System', 'score': false},
    ],
  },
  {
    'question': 'A __________ is a sequence of asynchronus events',
    'answers': [
      {'answerText': 'Current', 'score': false},
      {'answerText': 'Flow', 'score': false},
      {'answerText': 'Stream', 'score': true},
    ],
  },
  {
    'question': 'Flutter is a Framework of:',
    'answers': [
      {'answerText': 'JavaScript', 'score': false},
      {'answerText': 'Java', 'score': false},
      {'answerText': 'Dart', 'score': true},
    ],
  },
  {
    'question': 'Dart and Flutter are products of:',
    'answers': [
      {'answerText': 'Apple', 'score': false},
      {'answerText': 'Google', 'score': true},
      {'answerText': 'BMW', 'score': false},
    ],
  },
  {
    'question': 'Which one is a deprecated element in flutter',
    'answers': [
      {'answerText': 'RaisedButton', 'score': true},
      {'answerText': 'SingleChildScrollView', 'score': false},
      {'answerText': 'Container', 'score': false},
    ],
  },
  {
    'question': 'When was Flutter Created',
    'answers': [
      {'answerText': 'May, 2017', 'score': true},
      {'answerText': 'January, 2016', 'score': false},
      {'answerText': 'April, 2018', 'score': false},
    ],
  },
  {
    'question': 'Official Website of Flutter is:',
    'answers': [
      {'answerText': 'flutter.com', 'score': false},
      {'answerText': 'flutter.dev', 'score': true},
      {'answerText': 'flutter.net', 'score': false},
    ],
  },
  {
    'question': 'Command to build apk in flutter',
    'answers': [
      {'answerText': 'flutter apk build', 'score': false},
      {'answerText': 'flutter create apk', 'score': false},
      {'answerText': 'flutter build apk', 'score': true},
    ],
  },
  {
    'question': 'Command to delete build in Flutter:',
    'answers': [
      {'answerText': 'flutter clean build', 'score': false},
      {'answerText': 'flutter delete build', 'score': false},
      {'answerText': 'flutter clean', 'score': true},
    ],
  },
];

// class Answers {
//   final String answer;
//   final bool score;
//   Answers({
//     required this.answer,
//     required this.score,
//   });
// }
