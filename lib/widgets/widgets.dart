// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables

import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import 'package:my_notes/data/data.dart';
import 'package:my_notes/themes.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      centerTitle: true,
      title: Text(
        title,
        style: titleStyle,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MyChapters extends StatelessWidget {
  const MyChapters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
      ),
      padding: EdgeInsets.all(30),
      itemCount: chapters.length,
      itemBuilder: (BuildContext context, int index) {
        return Material(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(18),
          elevation: 8,
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CardDesign(
                          title: chapters[index],
                          list: index == 0
                              ? topic1
                              : index == 1
                                  ? topic2
                                  : index == 2
                                      ? topic3
                                      : index == 3
                                          ? topic4
                                          : topic5,
                          selectList: index == 0
                              ? topicWidget1
                              : index == 1
                                  ? topicWidget2
                                  : index == 2
                                      ? topicWidget3
                                      : index == 3
                                          ? topicWidget4
                                          : topicWidget5,
                        )),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  chapters[index],
                  textAlign: TextAlign.center,
                  style: cardStyle,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// class MyTopics extends StatelessWidget {
//   final indexxs;
//   const MyTopics({
//     Key? key,
//     required this.indexxs,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     var list;
//     switch (indexxs) {
//       case 0:
//         list = topic1;
//         break;
//       case 1:
//         list = topic2;
//         break;
//       case 2:
//         list = topic3;
//         break;
//       case 3:
//         list = topic4;
//         break;
//       case 4:
//         list = topic5;
//         break;
//     }

//     return GridView.builder(
//         padding: EdgeInsets.all(30),
//         itemCount: list.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 30,
//           mainAxisSpacing: 30,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           var top;
//           switch (indexxs) {
//             case 0:
//               top = topic1[index];
//               break;
//             case 1:
//               top = topic2[index];
//               break;
//             case 2:
//               top = topic3[index];
//               break;
//             case 3:
//               top = topic4[index];
//               break;
//             case 4:
//               top = topic5[index];
//               break;
//           }
//           return Card(
//             child: Material(
//               elevation: 3,
//               child: MaterialButton(
//                   child: Text(
//                     top,
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                   onPressed: () {}),
//             ),
//           );
//         });
//   }
// }

class CardDesign extends StatelessWidget {
  final List list;
  final List selectList;
  final title;
  const CardDesign({
    Key? key,
    required this.title,
    required this.list,
    required this.selectList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: MyAppBar(title: title),
      body: GridView.builder(
          padding: EdgeInsets.all(30),
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30,
          ),
          itemBuilder: (context, index) {
            return Material(
              borderRadius: BorderRadius.circular(18),
              elevation: 8,
              color: homeCardColor,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => selectList[index]),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      list[index],
                      textAlign: TextAlign.center,
                      style: cardStyle,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

// class Content extends StatelessWidget {
//   final String title;
//   final int index;
//   final List selectList;
//   const Content({
//     Key? key,
//     required this.index,
//     required this.title,
//     required this.selectList,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return selectList[index];
//   }
// }

class TopicName extends StatelessWidget {
  final String title;
  const TopicName({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: title),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "This is title",
                style: textTitleStyle,
              ),
              Text(
                "   dataDolore diam sea duo sea voluptua dolore. Aliquyam ut et sed tempor labore nonumy et. Takimata ut erat tempor amet voluptua takimata, sadipscing dolor lorem kasd voluptua ut. Duo magna.",
                style: textStyle,
                textAlign: TextAlign.justify,
              ),
              Image.asset(
                "assets/download.png",
                width: MediaQuery.of(context).size.width,
              ),
              Text(
                "this is Second title",
                style: textTitleStyle,
              ),
              Text(
                "   dataStet aliquyam no sed ipsum sed sed dolor duo ut dolores. Clita tempor dolor labore ipsum eos sed tempor, erat dolores lorem diam et ipsum. Erat sea vero sed sit lorem sit. Duo duo est consetetur justo et eos, kasd accusam voluptua sit sit ipsum aliquyam takimata sanctus, erat et.",
                textAlign: TextAlign.justify,
                style: textStyle,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "this is third title",
                style: textTitleStyle,
              ),
              BulletedList(listItems: [
                Text(
                  "dataVaunted he below love to dome name a caught the glorious, lineage ways honeyed crime superstition mote to. It losel.",
                  textAlign: TextAlign.justify,
                  style: textStyle,
                ),
                Text(
                  "dataVaunted he below love to dome name a caught the glorious, lineage ways honeyed crime superstition mote to. It losel.",
                  textAlign: TextAlign.justify,
                  style: textStyle,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

// class Topics extends StatelessWidget {
//   final List list;
//   final String title;
//   final List selectList;
//   const Topics(
//       {Key? key,
//       required this.title,
//       required this.selectList,
//       required this.list})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backGroundColor,
//       appBar: MyAppBar(title: title),
//       body: CardDesign(
//         title: title,
//         list: list,
//         selectList: selectList,
//       ),
//     );
//   }
// }

class QuizSection extends StatefulWidget {
  const QuizSection({Key? key}) : super(key: key);

  @override
  State<QuizSection> createState() => _QuizSectionState();
}

class _QuizSectionState extends State<QuizSection> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Answer extends StatelessWidget {
  final String answerText;
  final Color? answerColor;
  final Function tapAnswer;

  const Answer(
      {Key? key,
      required this.answerText,
      required this.answerColor,
      required this.tapAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => tapAnswer(),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: answerColor,
          border: Border.all(color: Colors.teal, width: 2),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          answerText,
          style: TextStyle(fontSize: 20.0, color: Colors.teal.shade700),
        ),
      ),
    );
  }
}

List<Icon> _trackScore = [];
int _questionNo = 0;

bool answerSelected = false;
bool endQuiz = false;
bool correctAnswer = false;

class Quiz1 extends StatefulWidget {
  const Quiz1({Key? key}) : super(key: key);

  @override
  _Quiz1State createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  int _totalScore = 0;
  void _questionAnswered(bool answerScore) {
    setState(() {
      // answer was selected
      answerSelected = true;
      // check if answer was correct
      if (answerScore) {
        _totalScore++;
        correctAnswer = true;
      }
      // adding to the score tracker on top
      _trackScore.add(
        answerScore
            ? const Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : const Icon(
                Icons.clear,
                color: Colors.red,
              ),
      );
      //when the quiz ends
      if (_questionNo + 1 == questions1.length) {
        endQuiz = true;
      }
    });
  }

  final sb = const SnackBar(
    content: Text('Please select an answer before going to the next question'),
    duration: Duration(seconds: 1),
  );
  void _nextQuestion() {
    setState(() {
      _questionNo++;
      answerSelected = false;
      correctAnswer = false;
    });
    // what happens at the end of the quiz
    if (_questionNo >= questions1.length) {
      _resetQuiz();
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionNo = 0;

      _trackScore = [];
      endQuiz = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        elevation: 6,
        shadowColor: Colors.teal,
        title: const Text(
          'Quiz App',
          style: TextStyle(
            color: Colors.tealAccent,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.teal.shade500,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Score: ${_totalScore.toString()}',
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Colors.teal,
                thickness: 2,
              ),
            ),
            /*Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    bottom: 10.0, left: 30.0, right: 30.0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                child: 
              ),
              ),*/
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Q.No.${_questionNo + 1}: ${questions1[_questionNo]['question']}",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.teal.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ...(questions1[_questionNo]['answers'] as List<Map<String, Object>>)
                .map(
              (answer) => Answer(
                answerText: "${answer['answerText']}",
                answerColor: answerSelected
                    ? correctAnswer
                        ? Colors.green.shade200
                        : Colors.red.shade200
                    : null,
                tapAnswer: () {
                  // if answer was already selected then nothing happens onTap
                  if (answerSelected) {
                    return;
                  }
                  //answer is being selected
                  _questionAnswered(answer['score'] as bool);
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 15, top: 25),
              child: Material(
                color: Colors.teal.shade600,
                borderRadius: BorderRadius.circular(15),
                shadowColor: Colors.teal.shade900,
                elevation: 12,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    if (!answerSelected) {
                      ScaffoldMessenger.of(context).showSnackBar(sb);
                      return;
                    }

                    if (answerSelected && !endQuiz) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.white,
                        content: Container(
                          alignment: Alignment.bottomCenter,
                          height: 40,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              correctAnswer
                                  ? 'Well done, you got it right!'
                                  : 'Wrong',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color:
                                    correctAnswer ? Colors.green : Colors.red,
                              ),
                            ),
                          ),
                        ),
                        duration: const Duration(seconds: 1),
                      ));
                    }
                    if (endQuiz) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Results(
                                  totalScore: _totalScore,
                                )),
                      );
                    }
                    _nextQuestion();
                  },
                  child: Text(
                    endQuiz ? 'Result' : 'Next Question',
                    style: const TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '${_questionNo + 1}/${questions1.length}',
                style: const TextStyle(
                    fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            // if (answerSelected && !endQuiz)
          ],
        ),
      ),
    );
  }
}

class Results extends StatelessWidget {
  final int totalScore;
  const Results({
    Key? key,
    required this.totalScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        elevation: 6,
        shadowColor: Colors.teal,
        title: const Text(
          'Results',
          style: TextStyle(
            color: Colors.tealAccent,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.teal.shade500,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Text(
                  totalScore > 4
                      ? 'Congratulations! Your final score is: $totalScore'
                      : 'Your final score is: $totalScore. Better luck next time!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.teal.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.teal.shade600,
                borderRadius: BorderRadius.circular(15),
                shadowColor: Colors.teal.shade900,
                elevation: 12,
                child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => Quiz1()));
                    },
                    child: Text(
                      "Restart Quiz",
                      style: const TextStyle(fontSize: 25, color: Colors.white),
                    )),
              ),
            ]),
      ),
    );
  }
}
