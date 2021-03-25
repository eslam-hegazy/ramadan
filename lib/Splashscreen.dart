import 'dart:async';

import 'package:connect1/constant.dart';
import 'package:connect1/first_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';

import 'Home.dart';

class Splashscreen extends StatefulWidget {
  static String id = "Splashscreen";
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.of(context).popAndPushNamed(first_screen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.70,
                  width: 300,
                  child: Lottie.asset(
                    "images/ramadan.json",
                  ),
                ),
                Positioned(
                  child: (Text(
                    "رمضانيات",
                    style: TextStyle(
                        fontFamily: "Jomhuria",
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  )),
                  bottom: 80,
                  right: 115,
                ),
              ],
            ),
            Expanded(
              child: SpinKitDoubleBounce(
                color: first_color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
