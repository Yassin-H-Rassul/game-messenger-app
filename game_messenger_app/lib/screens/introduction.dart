import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';

class introdution extends StatelessWidget {
  const introdution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lightTheme,
        home: Scaffold(
          body: Center(
            child: Column(
              children: [
                Container(
                    width: 300,
                    height: 300,
                    margin: EdgeInsets.fromLTRB(20, 120, 20, 60),
                    child: Image.asset('assets/images/intropic.png')),
                Container(
                  margin: EdgeInsets.only(bottom: 75,left: 20,right: 20),
                  child: Text(
                      'Connect easily with your family and friends over countries and play games together!',
                    style: TextStyle(fontSize: 24 ,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                  ),
                ),
                TextButton(onPressed: () {}, child: Text('terms & privacy policy')),
                Container(   width: 350,height: 50,
                  child: ElevatedButton(onPressed: () {}, child: Text('Start messigin')))
              ],
            ),
          ),
        ));
  }
}
