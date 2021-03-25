import 'dart:math';

import 'package:connect1/constant.dart';
import 'package:connect1/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  static String id = "Home";
  @override
  _HomeState createState() => _HomeState();
}

Random random = new Random();
int randomNumber = random.nextInt(list.length);

int _current_question = randomNumber;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: main_color,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("أسئلة دينية",
            style: TextStyle(
                color: main_color,
                fontWeight: FontWeight.bold,
                fontFamily: "Lalezar")),
        centerTitle: true,
      ),
      body: Builder(
        builder: (BuildContext context) => Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.30,
                child: Lottie.asset(
                  "images/ramadan2.json",
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "الأسئلة",
                style: TextStyle(fontFamily: "Lalezar", fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: main_color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      list[_current_question].quistion,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    heroTag: null,
                    child: Text(
                      "التالى",
                      style: TextStyle(fontFamily: "Lalezar"),
                    ),
                    autofocus: false,
                    focusColor: Color(0xFF0000FF),
                    hoverColor: Color(0xFF0000FF),
                    backgroundColor: main_color,
                    onPressed: () {
                      setState(() {
                        _current_question++;
                        if (_current_question == list.length) {
                          _current_question =
                              (_current_question + 1) % list.length;
                        }
                      });
                    },
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    child: Text(
                      "خطأ",
                      style: TextStyle(fontFamily: "Lalezar"),
                    ),
                    autofocus: false,
                    focusColor: Color(0xFF0000FF),
                    hoverColor: Color(0xFF0000FF),
                    backgroundColor: Color(0xFFFF0000),
                    onPressed: () {
                      checkansower(context, false);
                    },
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    child: Text(
                      "صواب",
                      style: TextStyle(fontFamily: "Lalezar"),
                    ),
                    autofocus: false,
                    focusColor: Color(0xFF0000FF),
                    hoverColor: Color(0xFF0000FF),
                    backgroundColor: Color(0xFF0000FF),
                    onPressed: () {
                      checkansower(context, true);
                    },
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    child: Text(
                      "السابق",
                      style: TextStyle(fontFamily: "Lalezar"),
                    ),
                    autofocus: false,
                    focusColor: Color(0xFF0000FF),
                    hoverColor: Color(0xFF0000FF),
                    backgroundColor: main_color,
                    onPressed: () {
                      setState(() {
                        _current_question--;
                        if (_current_question == 0) {
                          _current_question =
                              (_current_question + 1) % list.length;
                        }
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

checkansower(BuildContext context, bool userchoice) {
  if (userchoice == list[_current_question].istrue) {
    final snackbar = SnackBar(
        backgroundColor: Color(0xFF3900C6),
        duration: Duration(seconds: 2),
        elevation: 0,
        content: Text(
          "الأجابة صحيحة",
          textAlign: TextAlign.center,
        ));
    Scaffold.of(context).showSnackBar(snackbar);
    print("yes correct");
  } else {
    final snackbar = SnackBar(
        content: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFFF0000),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("images/wrong.json"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              list[_current_question].solve,
              style: TextStyle(fontFamily: "Lalezar", fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ));
    Scaffold.of(context).showSnackBar(snackbar);
    print("no correct");
  }
}
