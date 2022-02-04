// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/screens/more_screen/moreScreen.dart';
import 'package:game_messenger_app/screens/verification_screen/create_profile_screen.dart';
import 'package:game_messenger_app/screens/verification_screen/verification_light1.dart';
import 'package:game_messenger_app/services/authentication_service.dart';
import 'package:provider/provider.dart';

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
          initialRoute: '/moreScreen',
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
    return verification_light1();
  }
}
