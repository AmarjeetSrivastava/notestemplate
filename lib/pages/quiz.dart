import 'package:flutter/material.dart';
import 'package:my_notes/data/data.dart';
import 'package:my_notes/pages/quiz_results.dart';
import 'package:my_notes/themes.dart';
import 'package:my_notes/widgets/widgets.dart';

class Quiz1 extends StatefulWidget {
  const Quiz1({Key? key}) : super(key: key);

  @override
  _Quiz1State createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  int _totalScore = 0;
  List<Icon> _trackScore = [];
  int _questionNo = 0;

  bool answerSelected = false;
  bool endQuiz = false;
  bool correctAnswer = false;
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
      if (_questionNo + 1 == questions.length) {
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
    if (_questionNo >= questions.length) {
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
      backgroundColor: homeCardColor,
      appBar: const MyAppBar(title: "Quiz"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Score: ${_totalScore.toString()}',
                  style: textStyle.copyWith(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: quizColor,
                thickness: 2,
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Q.No.${_questionNo + 1}: ${questions[_questionNo].question}",
                textAlign: TextAlign.justify,
                style: textTitleStyle.copyWith(color: quizColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...(questions[_questionNo].answers).map(
              (answer) => Answer(
                answerText: answer.answer,
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
                  _questionAnswered(answer.score);
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 15, top: 25),
              child: Material(
                color: quizColor,
                borderRadius: BorderRadius.circular(15),
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
                    style: restartStyle,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '${_questionNo + 1}/${questions.length}',
                style: cardStyle.copyWith(fontWeight: FontWeight.bold),
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
