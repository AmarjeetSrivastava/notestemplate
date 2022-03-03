// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_notes/themes.dart';
import 'package:my_notes/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: homeCardColor,
        appBar: MyAppBar(
          title: "Operating System Notes",
        ),
        body: MyChapters());
  }
}
