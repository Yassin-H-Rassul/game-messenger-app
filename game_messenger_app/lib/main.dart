// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/screens/more_screen/moreScreen.dart';
import 'package:game_messenger_app/screens/verification_screen/create_profile_screen.dart';
import 'package:game_messenger_app/screens/verification_screen/verification_light1.dart';
import 'package:game_messenger_app/services/authentication_service.dart';
import 'package:game_messenger_app/services/shared_preferences/shared_preferences_helper.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp()
      .then((value) => debugPrint('firebase successfully initialized.'));
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthService>(
          create: (context) => AuthService(),
        ),
        ChangeNotifierProvider<SharedPreferencesHelper>(
            create: (context) => SharedPreferencesHelper()),
      ],
      child: MaterialAppWidget(),
    );
  }
}

class MaterialAppWidget extends StatefulWidget {
  const MaterialAppWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MaterialAppWidget> createState() => _MaterialAppWidgetState();
}

class _MaterialAppWidgetState extends State<MaterialAppWidget> {
  @override
  void initState() {
    Provider.of<SharedPreferencesHelper>(context, listen: false).getTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder:
        (context, SharedPreferencesHelper sharedPreferencesHelper, child) {
      return MaterialApp(
        title: 'Game Messenger App',
        debugShowCheckedModeBanner: false,
        initialRoute: '/moreScreen',
        routes: {
          '/': (context) => AuthenticationWrapper(),
          '/verification': (context) => verification_light1(),
          '/createProfile': (context) => CreateProfileAccount(),
          '/moreScreen': (context) => MoreScreen(),
        },
        theme: sharedPreferencesHelper.selectedTheme == "dark"
            ? darkTheme
            : lightTheme,
      );
    });
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
