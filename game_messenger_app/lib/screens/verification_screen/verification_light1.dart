// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class verification_light1 extends StatefulWidget {
  const verification_light1({Key? key}) : super(key: key);

  @override
  _verification_light1State createState() => _verification_light1State();
}

class _verification_light1State extends State<verification_light1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(25, 150, 25, 0),
                child: Text(
                  'Enter Your Phone Number',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 300),
                child: Container(
                    margin: EdgeInsets.only(top: 7),
                    child: Text(
                        'please confirm your country code and enter your phone number',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1)),
              ),
              SizedBox(
                height: 70,
              ),
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                errorMessage: 'please enter your phone number',
                autoFocus: true,
                cursorColor: Colors.blue,
                keyboardType: TextInputType.phone,
                textStyle: Theme.of(context).textTheme.bodyText1,
                spaceBetweenSelectorAndTextField: 0,
                selectorTextStyle: Theme.of(context).textTheme.bodyText1,
                inputDecoration: InputDecoration(
                    hintText: 'Phone number',
                    hintStyle: TextStyle(color: Colors.grey[700]),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[100],
                    constraints: BoxConstraints(maxWidth: 250)),
                searchBoxDecoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[100],
                    constraints: BoxConstraints(maxWidth: 5)),
              ),
              SizedBox(
                height: 95,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(300, 50) // put the width and height you want
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
