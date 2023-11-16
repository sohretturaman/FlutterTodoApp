// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './screens/Home.dart';

void main() {
  return runApp(Rooter());
}

class Rooter extends StatelessWidget {
  const Rooter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
