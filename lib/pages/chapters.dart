import 'package:flutter/material.dart';
import 'package:my_notes/data/data.dart';
import 'package:my_notes/themes.dart';
import 'package:my_notes/widgets/widgets.dart';

class CardDesign extends StatelessWidget {
  final int indexing;
  final String title;
  const CardDesign({
    Key? key,
    required this.title,
    required this.indexing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: MyAppBar(title: title),
      body: GridView.builder(
          padding: const EdgeInsets.all(30),
          itemCount: chapters[indexing].topn.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                    MaterialPageRoute(
                        builder: (context) =>
                            chapters[indexing].topn[index].widget),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      chapters[indexing].topn[index].name,
                      textAlign: TextAlign.center,
                      style: cardStyle,
                    ),
                    const SizedBox(
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
