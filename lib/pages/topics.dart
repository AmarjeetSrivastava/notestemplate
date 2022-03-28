import 'package:flutter/material.dart';
import 'package:my_notes/themes.dart';

class OperatingSystemFunction extends StatelessWidget {
  const OperatingSystemFunction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "This is title",
          style: textTitleStyle,
        ),
        const Text(
          "   dataDolore diam sea duo sea voluptua dolore. Aliquyam ut et sed tempor labore nonumy et. Takimata ut erat tempor amet voluptua takimata, sadipscing dolor lorem kasd voluptua ut. Duo magna.",
          style: textStyle,
          textAlign: TextAlign.justify,
        ),
        Image.asset(
          "assets/download.png",
          width: MediaQuery.of(context).size.width,
        ),
        const Text(
          "This is Second title",
          style: textTitleStyle,
        ),
        const Text(
          "   dataStet aliquyam no sed ipsum sed sed dolor duo ut dolores. Clita tempor dolor labore ipsum eos sed tempor, erat dolores lorem diam et ipsum. Erat sea vero sed sit lorem sit. Duo duo est consetetur justo et eos, kasd accusam voluptua sit sit ipsum aliquyam takimata sanctus, erat et.",
          textAlign: TextAlign.justify,
          style: textStyle,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "This is third title",
          style: textTitleStyle,
        ),
      ],
    );
  }
}
