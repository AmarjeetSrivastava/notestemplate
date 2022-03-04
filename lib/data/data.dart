import 'package:my_notes/models/model.dart';
import 'package:my_notes/pages/quiz.dart';
import 'package:my_notes/pages/topics.dart';

const applicationName = "Operating System Notes";

//Topics Lists

// List topic1 = [
//   "Operating System & Function",
//   "Classifiation of Operating System",
//   "Operating System Structure",
//   "System Components",
//   "Operating System Services",
//   "Reenterent Kernels",
//   "Quiz1",
// ];
// List topic2 = [
//   "Process Concept",
//   "Principal of Concurrency",
//   "Producer/Consumer Problem",
//   "Mutual Exclution",
//   "Critical Section Problem",
//   "Dekker's Solution",
//   "PeterSon's Solution",
//   "Semaphores",
//   "Test and Set Operation",
//   "Classical Problem in Concurrency",
//   "Inter Process Communicationn",
//   "Process Generation",
//   "Quiz2",
// ];
// List topic3 = [
//   "Scheduling Concepts",
//   "Performance Criteria",
//   "Process States",
//   "Process Transition Diagram",
//   "Schedulers",
//   "Process Control Block",
//   "Process Address Space",
//   "Process Identification Informatiion",
//   "Threads and their Management",
//   "Scheduling Algorithms",
//   "MultiProcessor Scheduling",
//   "Deadlock",
//   "Quiz3",
// ];
// List topic4 = [
//   "Base Bare Machine",
//   "Resident Monitor",
//   "Multiprogramming with Fixed Partition",
//   "MultiProgramming with Variable Partition",
//   "Protection Scemes",
//   "Paging",
//   "Segmenttaion",
//   "Paged Segmentation",
//   "Virtual Memory Concepts",
//   "Demand Paging",
//   "Page Replacement Algorithms",
//   "Thrasing",
//   "Cache Memory Organization",
//   "Locality of Reference",
//   "Quiz4",
// ];
// List topic5 = [
//   "I/O Devices",
//   "I/O Subsystems",
//   "I/O Bufferings",
//   "Disk Storage and Disk Scheduling",
//   "RAID",
//   "File System",
//   "File System Implementation",
//   "File System Protection and Security",
//   "Quiz",
// ];

//Widgets Lists
// List topicWidget1 = [
//   TopicName(
//     title: topic1[0],
//   ),
//   Text("Topic 12"),
//   Text("Topic 13"),
//   Text("Topic 14"),
//   Text("Topic 15"),
//   Text("Topic 16"),
//   Quiz1(),
// ];
// List topicWidget2 = [
//   Text("topic 21"),
//   Text("topic 22"),
//   Text("topic 23"),
//   Text("topic 24"),
//   Text("topic 25"),
//   Text("topic 26"),
//   Text("topic 27"),
//   Text("topic 28"),
//   Text("topic 29"),
//   Text("topic 2a"),
//   Text("topic 2b"),
//   Text("topic 2c"),
//   Text("topic 2d"),
// ];
// List topicWidget3 = [
//   Text("topic 31"),
//   Text("topic 32"),
//   Text("topic 33"),
//   Text("topic 34"),
//   Text("topic 35"),
//   Text("topic 36"),
//   Text("topic 37"),
//   Text("topic 38"),
//   Text("topic 39"),
//   Text("topic 3a"),
//   Text("topic 3b"),
//   Text("topic 3c"),
//   Text("topic 3d"),
// ];
// List topicWidget4 = [
//   Text("topic 41"),
//   Text("topic 42"),
//   Text("topic 43"),
//   Text("topic 44"),
//   Text("topic 45"),
//   Text("topic 46"),
//   Text("topic 47"),
//   Text("topic 48"),
//   Text("topic 49"),
//   Text("topic 4a"),
//   Text("topic 4b"),
//   Text("topic 4c"),
//   Text("topic 4d"),
//   Text("topic 4e"),
//   Text("topic 4f"),
// ];
// List topicWidget5 = [
//   Text("topic 51"),
//   Text("topic 52"),
//   Text("topic 53"),
//   Text("topic 54"),
//   Text("topic 55"),
//   Text("topic 56"),
//   Text("topic 57"),
//   Text("topic 58"),
//   Text("topic 59"),
// ];

// final questions1 = [
//   {
//     'question': 'Flutter is a:',
//     'answers': [
//       {'answerText': 'Framework', 'score': true},
//       {'answerText': 'Programming Language', 'score': false},
//       {'answerText': 'Operating System', 'score': false},
//     ],
//   },
//   {
//     'question': 'A __________ is a sequence of asynchronus events',
//     'answers': [
//       {'answerText': 'Current', 'score': false},
//       {'answerText': 'Flow', 'score': false},
//       {'answerText': 'Stream', 'score': true},
//     ],
//   },
//   {
//     'question': 'Flutter is a Framework of:',
//     'answers': [
//       {'answerText': 'JavaScript', 'score': false},
//       {'answerText': 'Java', 'score': false},
//       {'answerText': 'Dart', 'score': true},
//     ],
//   },
//   {
//     'question': 'Dart and Flutter are products of:',
//     'answers': [
//       {'answerText': 'Apple', 'score': false},
//       {'answerText': 'Google', 'score': true},
//       {'answerText': 'BMW', 'score': false},
//     ],
//   },
//   {
//     'question': 'Which one is a deprecated element in flutter',
//     'answers': [
//       {'answerText': 'RaisedButton', 'score': true},
//       {'answerText': 'SingleChildScrollView', 'score': false},
//       {'answerText': 'Container', 'score': false},
//     ],
//   },
//   {
//     'question': 'When was Flutter Created',
//     'answers': [
//       {'answerText': 'May, 2017', 'score': true},
//       {'answerText': 'January, 2016', 'score': false},
//       {'answerText': 'April, 2018', 'score': false},
//     ],
//   },
//   {
//     'question': 'Official Website of Flutter is:',
//     'answers': [
//       {'answerText': 'flutter.com', 'score': false},
//       {'answerText': 'flutter.dev', 'score': true},
//       {'answerText': 'flutter.net', 'score': false},
//     ],
//   },
//   {
//     'question': 'Command to build apk in flutter',
//     'answers': [
//       {'answerText': 'flutter apk build', 'score': false},
//       {'answerText': 'flutter create apk', 'score': false},
//       {'answerText': 'flutter build apk', 'score': true},
//     ],
//   },
//   {
//     'question': 'Command to delete build in Flutter:',
//     'answers': [
//       {'answerText': 'flutter clean build', 'score': false},
//       {'answerText': 'flutter delete build', 'score': false},
//       {'answerText': 'flutter clean', 'score': true},
//     ],
//   },
// ];

//Questions List
final questions = [
  Question(
    question: "question",
    answers: [
      Answers(answer: "answer", score: true),
      Answers(answer: "answer", score: false),
      Answers(answer: "answer", score: false),
    ],
  ),
  Question(
    question: "question",
    answers: [
      Answers(answer: "answer", score: true),
      Answers(answer: "answer", score: false),
      Answers(answer: "answer", score: false),
    ],
  ),
  Question(
    question: "question",
    answers: [
      Answers(answer: "answer", score: true),
      Answers(answer: "answer", score: false),
      Answers(answer: "answer", score: false),
    ],
  ),
  Question(
    question: "question",
    answers: [
      Answers(answer: "answer", score: true),
      Answers(answer: "answer", score: false),
      Answers(answer: "answer", score: false),
    ],
  ),
  Question(
    question: "question",
    answers: [
      Answers(answer: "answer", score: true),
      Answers(answer: "answer", score: false),
      Answers(answer: "answer", score: false),
    ],
  ),
  Question(
    question: "question",
    answers: [
      Answers(answer: "answer", score: true),
      Answers(answer: "answer", score: false),
      Answers(answer: "answer", score: false),
    ],
  ),
  Question(
    question: "question",
    answers: [
      Answers(answer: "answer", score: true),
      Answers(answer: "answer", score: false),
      Answers(answer: "answer", score: false),
    ],
  ),
];

//Chapters and Topic List
final chapters = [
  Chapter(chapterName: "Introduction", topics: [
    Topic(
        name: "Operating System & Function",
        widget: TopicName(title: "yahaa par name lana hai")),
    Topic(
        name: "Classifiation of Operating System",
        widget: const TopicName(title: "title")),
    Topic(
        name: "Operating System Structure",
        widget: const TopicName(title: "title")),
    Topic(name: "System Components", widget: const TopicName(title: "title")),
    Topic(
        name: "Operating System Services",
        widget: const TopicName(title: "title")),
    Topic(name: "Reenterent Kernels", widget: const TopicName(title: "title")),
    Topic(name: "Quiz", widget: const Quiz1()),
  ]),
  Chapter(
    chapterName: "Concurrent Processes",
    topics: [
      Topic(name: "Process Concept", widget: const TopicName(title: "title")),
      Topic(
          name: "Principal of Concurrency",
          widget: const TopicName(title: "title")),
      Topic(
          name: "Producer/Consumer Problem",
          widget: const TopicName(title: "title")),
      Topic(name: "Mutual Exclution", widget: const TopicName(title: "title")),
      Topic(
          name: "Critical Section Problem",
          widget: const TopicName(title: "title")),
      Topic(name: "Dekker's Solution", widget: const TopicName(title: "title")),
      Topic(
          name: "PeterSon's Solution", widget: const TopicName(title: "title")),
      Topic(name: "Semaphores", widget: const TopicName(title: "title")),
      Topic(
          name: "Test and Set Operation",
          widget: const TopicName(title: "title")),
      Topic(
          name: "Classical Problem in Concurrency",
          widget: const TopicName(title: "title")),
      Topic(
          name: "Inter Process Communicationn",
          widget: const TopicName(title: "title")),
      Topic(
          name: "Process Generation", widget: const TopicName(title: "title")),
      Topic(name: "Quiz", widget: const TopicName(title: "title")),
    ],
  ),
  Chapter(
    chapterName: "CPU Scheduling",
    topics: [
      Topic(
          name: "Scheduling Concepts", widget: const TopicName(title: "title")),
      Topic(
          name: "Performance Criteria",
          widget: const TopicName(title: "title")),
      Topic(name: "Process States", widget: const TopicName(title: "title")),
      Topic(
          name: "Process Transition Diagram",
          widget: const TopicName(title: "title")),
      Topic(name: "Schedulers", widget: const TopicName(title: "title")),
      Topic(
          name: "Process Control Block",
          widget: const TopicName(title: "title")),
      Topic(
          name: "Process Address Space",
          widget: const TopicName(title: "title")),
      Topic(
          name: "Process Identification Informatiion",
          widget: const TopicName(title: "title")),
      Topic(
          name: "Threads and their Management",
          widget: const TopicName(title: "title")),
      Topic(
          name: "Scheduling Algorithms",
          widget: const TopicName(title: "title")),
      Topic(
          name: "MultiProcessor Scheduling",
          widget: const TopicName(title: "title")),
      Topic(name: "Deadlock", widget: const TopicName(title: "title")),
      Topic(name: "Quiz", widget: const TopicName(title: "title")),
    ],
  ),
  Chapter(
    chapterName: "Memory management",
    topics: [
      Topic(name: "Base Bare Machine", widget: const TopicName(title: "title")),
      Topic(name: "Resident Monitor", widget: const TopicName(title: "title")),
      Topic(
          name: "Multiprogramming with Fixed Partition",
          widget: const TopicName(title: "title")),
      Topic(
          name: "MultiProgramming with Variable Partition",
          widget: const TopicName(title: "title")),
      Topic(name: "Protection Scemes", widget: const TopicName(title: "title")),
      Topic(name: "Paging", widget: const TopicName(title: "title")),
      Topic(name: "Segmentaion", widget: const TopicName(title: "title")),
      Topic(
          name: "Paged Segmentation", widget: const TopicName(title: "title")),
      Topic(
          name: "Virtual Memory Concepts",
          widget: const TopicName(title: "title")),
      Topic(name: "Demand Paging", widget: const TopicName(title: "title")),
      Topic(
          name: "Page Replacement Algorithms",
          widget: const TopicName(title: "title")),
      Topic(name: "Thrasing", widget: const TopicName(title: "title")),
      Topic(
          name: "Cache Memory Organization",
          widget: const TopicName(title: "title")),
      Topic(
          name: "Locality of Reference",
          widget: const TopicName(title: "title")),
      Topic(name: "Quiz", widget: const TopicName(title: "title")),
    ],
  ),
  Chapter(
    chapterName: "I/O Management and Disk Scheduling",
    topics: [
      Topic(name: "I/O Devices", widget: const TopicName(title: "title")),
      Topic(name: "I/O Subsystems", widget: const TopicName(title: "title")),
      Topic(name: "I/O Bufferings", widget: const TopicName(title: "title")),
      Topic(
          name: "Disk Storage and Disk Scheduling",
          widget: const TopicName(title: "title")),
      Topic(name: "RAID", widget: const TopicName(title: "title")),
      Topic(name: "File System", widget: const TopicName(title: "title")),
      Topic(
          name: "File System Implementation",
          widget: const TopicName(title: "title")),
      Topic(
          name: "File System Protection and Security",
          widget: const TopicName(title: "title")),
      Topic(name: "Quiz", widget: const TopicName(title: "title")),
    ],
  ),
];
