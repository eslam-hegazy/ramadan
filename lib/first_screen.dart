import 'package:connect1/Home.dart';
import 'package:connect1/constant.dart';
import 'package:connect1/four_screen.dart';
import 'package:connect1/second_screen.dart';
import 'package:connect1/third_screen.dart';
import 'package:connect1/widgets/items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class first_screen extends StatelessWidget {
  static String id = "firstscreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: main_color,
      appBar: AppBar(
        title: Text("إسلاميات",
            style: TextStyle(color: Colors.white, fontSize: 20)),
        centerTitle: true,
        backgroundColor: main_color,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Home.id);
              },
              child: items("أسئلة دينية", "images/question.png"),
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(second_screen.id);
                },
                child: items("أذكار الصباح", "images/morning.png")),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(third_screen.id);
                },
                child: items("أذكار المساء", "images/evening.png")),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(four_screen.id);
                },
                child: items("أفضل الأدعية الرمضانية", "images/need.png")),
          ],
        ),
      ),
    );
  }
}
