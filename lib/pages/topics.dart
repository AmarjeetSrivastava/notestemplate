import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:my_notes/themes.dart';
import 'package:my_notes/widgets/widgets.dart';

class TopicName extends StatelessWidget {
  final String title;
  const TopicName({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: title),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
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
                "this is Second title",
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
                "this is third title",
                style: textTitleStyle,
              ),
              const BulletedList(listItems: [
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
