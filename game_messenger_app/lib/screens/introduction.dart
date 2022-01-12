// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Introdution extends StatelessWidget {
  const Introdution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: 300,
                height: 300,
                margin: EdgeInsets.fromLTRB(20, 100, 20, 60),
                child: Image.asset('assets/images/intropic.png')),
            Container(
              margin: EdgeInsets.only(bottom: 30, left: 20, right: 20),
              child: Text(
                'Connect easily with your family and friends over countries and play games together!',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(onPressed: () {}, child: Text('terms & privacy policy')),
            Container(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {}, child: Text('Start messigin'))),
                    
          ],
        ),
      ),
    );
  }
}
