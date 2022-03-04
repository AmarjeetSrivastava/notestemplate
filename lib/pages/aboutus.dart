import 'package:flutter/material.dart';
import 'package:my_notes/themes.dart';
import 'package:my_notes/widgets/widgets.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "About Us"),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            CircleAvatar(
              backgroundColor: appBarColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "assets/papaya_icon.png",
                ),
              ),
              radius: 75,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Papaya Coders",
              style: titleStyle.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Eterni nostro lui dare porgiamo di cosa benignita fatica cospetto lui. Tanto ci fuor di ma come, in della come. Mut gedanken einz'ges jedoch weißt wo zürnen, und du manchmal dich heimat wilde blieb gartens. Stund' vom ist oft in. Eterni nostro lui dare porgiamo di cosa benignita fatica cospetto lui. Tanto ci fuor di ma come, in della come. Mut gedanken einz'ges jedoch weißt wo zürnen, und du manchmal dich heimat wilde blieb gartens. Stund' vom ist oft in.",
              style: textStyle,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
