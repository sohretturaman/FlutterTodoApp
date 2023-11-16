// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomPressableContainer extends StatefulWidget {
  const CustomPressableContainer({super.key});

  @override
  State<CustomPressableContainer> createState() =>
      _CustomPressableContainerState();
}

class _CustomPressableContainerState extends State<CustomPressableContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('notes pressed');
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    style: BorderStyle.solid, color: Colors.black, width: 1))),
        padding: EdgeInsets.only(bottom: 0, right: 10, left: 10, top: 20),
        child: Text(
          'Notes ',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
