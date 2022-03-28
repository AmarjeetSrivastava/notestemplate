import 'package:flutter/material.dart';
import 'package:my_notes/pages/quiz.dart';
import 'package:my_notes/themes.dart';

class Results extends StatelessWidget {
  final int totalScore;
  const Results({
    Key? key,
    required this.totalScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: resultbackgroundcolor,
      appBar: AppBar(
        elevation: 6,
        shadowColor: quizColor,
        title: const Text(
          'Results',
          style: resultStyle,
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
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Text(
                  totalScore > 4
                      ? 'Congratulations! Your final score is: $totalScore'
                      : 'Your final score is: $totalScore. Better luck next time!',
                  textAlign: TextAlign.center,
                  style: resultTextStyle,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                color: quizButtonColor,
                borderRadius: BorderRadius.circular(15),
                shadowColor: quizColor,
                elevation: 12,
                child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Quiz1()));
                    },
                    child: const Text(
                      "Restart Quiz",
                      style: restartStyle,
                    )),
              ),
            ]),
      ),
    );
  }
}
