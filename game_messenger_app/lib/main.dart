// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/screens/introduction.dart';
import 'package:game_messenger_app/screens/more_screen/moreScreen.dart';
import 'package:game_messenger_app/screens/verification_screen/OTP_verification_screen.dart';
import 'package:game_messenger_app/screens/verification_screen/create_profile_screen.dart';
import 'package:game_messenger_app/screens/verification_screen/verification_light1.dart';
import 'package:game_messenger_app/services/authentication_service.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyBXeJj0PM51ZPP8-PVQtL-QNLbjrLJPngg",
    authDomain: "game-messenger-app.firebaseapp.com",
    projectId: "game-messenger-app",
    storageBucket: "game-messenger-app.appspot.com",
    messagingSenderId: "353376073549",
    appId: "1:353376073549:web:6f28a39ec54ef5d03aa904",
    measurementId: "G-GLZGCWCSLS",
  )).then((value) => print('firebase successfully initialized.'));
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = false;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthService>(
          create: (context) => AuthService(),
        ),
      ],
      child: MaterialApp(
          title: 'Game Messenger App',

          // removing the red debug text just to look nice
          debugShowCheckedModeBanner: false,

          // this is routes to the screen
          initialRoute: '/',
          routes: {
            '/': (context) => AuthenticationWrapper(),
            '/verification': (context) => verification_light1(),
            '/createProfile': (context) => CreateProfileAccount(),
            '/moreScreen': (context) => MoreScreen(),
          },
          theme: isDark ? darkTheme : lightTheme),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  Widget build(BuildContext context) {
    User? theUser = Provider.of<AuthService>(context).theUser;

    if (theUser != null) {
      return CreateProfileAccount();
    }
    return Introdution();
  }
}
