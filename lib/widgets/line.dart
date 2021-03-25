import 'package:connect1/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 50, top: 10, bottom: 10),
      child: Divider(
        color: main_color,
        height: 2,
      ),
    );
  }
}
