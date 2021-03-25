import 'package:connect1/Home.dart';
import 'package:connect1/first_screen.dart';
import 'package:connect1/four_screen.dart';
import 'package:connect1/second_screen.dart';
import 'package:connect1/third_screen.dart';

import 'package:flutter/material.dart';

import 'Splashscreen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "رمضانيات",
      initialRoute: Splashscreen.id,
      debugShowCheckedModeBanner: false,
      routes: {
        Splashscreen.id: (context) => Splashscreen(),
        Home.id: (context) => Home(),
        first_screen.id: (context) => first_screen(),
        second_screen.id: (context) => second_screen(),
        third_screen.id: (context) => third_screen(),
        four_screen.id: (context) => four_screen(),
      },
    );
  }
}
