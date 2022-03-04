import 'package:flutter/material.dart';
import 'package:my_notes/data/data.dart';
import 'package:my_notes/themes.dart';
import 'package:my_notes/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: homeCardColor,
        appBar: MyAppBar(
          title: applicationName,
        ),
        body: MyChapters());
  }
}
