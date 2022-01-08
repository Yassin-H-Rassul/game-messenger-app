// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/screens/verification_light1.dart';
import 'package:game_messenger_app/screens/walk_through.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = false;
    return MaterialApp(
        title: 'Game Messenger App',

        // removing the red debug text just to look nice
        debugShowCheckedModeBanner: false,

        // this is routes to the screen
        initialRoute: '/',
        routes: {
          '/': (context) => Walkthrough(),
          'verification1':(context)=>verification_light1(),
        },
      
        theme: isDark ? darkTheme : lightTheme
        );
  }
}
