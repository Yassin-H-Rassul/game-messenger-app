// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/screens/contacts_screen/contact_screen.dart';
import 'package:game_messenger_app/screens/introduction.dart';
import 'package:game_messenger_app/screens/verification_screen/OTP_verification_screen.dart';
import 'package:game_messenger_app/screens/verification_screen/create_profile_screen.dart';
import 'package:game_messenger_app/screens/verification_screen/verification_light1.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp()
      .then((value) => print('firebase successfully initialized.'));
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
        initialRoute: '/a',
        routes: {
          '/a': (context) => verification_light1(),
          '/b': (context) => CreateProfileAccount(),
          '/c': (context) => OTPVerificationScreen(),
        },
        theme: isDark ? darkTheme : lightTheme);
  }
}
