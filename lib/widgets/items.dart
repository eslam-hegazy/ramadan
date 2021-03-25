import 'package:connect1/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class items extends StatelessWidget {
  final String name;
  final String image;

  items(this.name, this.image);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            alignment: Alignment.center,
            child: Text(name,
                style: TextStyle(
                    color: main_color, fontFamily: "Lalezar", fontSize: 18)),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.17,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(1000),
            ),
          ),
        ),
      ],
    );
  }
}
