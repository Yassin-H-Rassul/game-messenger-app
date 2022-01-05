// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Walkthrough extends StatelessWidget {
  const Walkthrough({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //simple example to use theme
        child: Text(
          'ali',
          /* below statement in the style insted write this and change headline4 to any other */
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
