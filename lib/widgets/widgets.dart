import 'package:flutter/material.dart';

import 'package:my_notes/data/data.dart';
import 'package:my_notes/pages/aboutus.dart';
import 'package:my_notes/pages/chapters.dart';
import 'package:my_notes/themes.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      centerTitle: true,
      leading: title != applicationName
          ? IconButton(
              onPressed: () async {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new))
          : null,
      title: Text(
        title,
        style: titleStyle,
      ),
      actions: [
        PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
                child: InkWell(
              onTap: () async {
                Navigator.pop(context);
                Navigator.of(context).pop();
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: const Text("Home"),
              ),
            )),
            PopupMenuItem(
                child: InkWell(
              onTap: () async {
                Navigator.pop(context);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AboutUs()));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: const Text("About us"),
              ),
            )),
            PopupMenuItem(
              child: InkWell(
                onTap: () async {
                  Navigator.pop(context);
                  launch(
                      "https://play.google.com/store/apps/developer?id=papaya+coders");
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: const Text("More Apps"),
                ),
              ),
            ),
            PopupMenuItem(
              child: InkWell(
                onTap: () async {
                  Navigator.pop(context);
                  launch("https://youtube.com/c/papayacoders");
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: const Text("Youtube"),
                ),
              ),
            ),
            PopupMenuItem(
              child: InkWell(
                onTap: () async {
                  Navigator.pop(context);
                  launch("https://papayacoders.com");
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: const Text("Website"),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyChapters extends StatelessWidget {
  const MyChapters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
      ),
      padding: const EdgeInsets.all(30),
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
                        title: chapters[index].chapterName, indexing: index)),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  chapters[index].chapterName,
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
      },
    );
  }
}

class TopicPage extends StatelessWidget {
  final String title;
  final Widget topicname;
  const TopicPage({Key? key, required this.title, required this.topicname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: title),
      body: SingleChildScrollView(
        child: Container(padding: const EdgeInsets.all(30), child: topicname),
      ),
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
