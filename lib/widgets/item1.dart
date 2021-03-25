import 'package:connect1/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class item1 extends StatelessWidget {
  final String text;

  item1(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 50, top: 10, bottom: 10),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(right: 20, left: 20, top: 6, bottom: 6),
        child: Text(
          text,
          style: TextStyle(
            color: main_color,
            fontFamily: "Lalezar",
          ),
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          color: main_color.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
