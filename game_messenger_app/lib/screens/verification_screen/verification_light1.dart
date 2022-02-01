// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/screens/verification_screen/OTP_verification_screen.dart';
import 'package:game_messenger_app/services/authentication_service.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';

class verification_light1 extends StatefulWidget {
  const verification_light1({Key? key}) : super(key: key);

  @override
  _verification_light1State createState() => _verification_light1State();
}

class _verification_light1State extends State<verification_light1> {
  String? phoneNo;
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    var MQH = MediaQuery.of(context).size.height;
    var MQW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MQW >= 820 && MQH >= 1180
                        ? 300
                        : MQW >= 390 && MQH >= 844
                            ? 150
                            : MQW >= 768 && MQH >= 1024
                                ? 250
                                : MQW >= 393 && MQH >= 851
                                    ? 220
                                    : MQW >= 540 && MQH >= 720
                                        ? 80.0
                                        : 150),
                // margin: EdgeInsets.fromLTRB(25, 150, 25, 0),
                child: Text(
                  'Enter Your Phone Number',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MQW >= 820 && MQH >= 1180
                        ? 400
                        : MQH >= 768 && MQW >= 1024
                            ? 350
                            : 300),
                child: Container(
                    margin: EdgeInsets.only(top: 7),
                    child: Text(
                        'please confirm your country code and enter your phone number',
                        textAlign: TextAlign.center,
                        style: MQW >= 820 && MQH >= 1180
                            ? TextStyle(fontSize: 25)
                            : MQW >= 768 && MQH >= 1024
                                ? TextStyle(fontSize: 25)
                                : Theme.of(context).textTheme.bodyText1)),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MQW >= 820 && MQH >= 1180
                        ? 200.0
                        : MQW >= 768 && MQH >= 1024
                            ? 175.0
                            : MQW >= 912 && MQH >= 1368
                                ? 200.0
                                : MQW >= 1024 && MQH >= 600
                                    ? 275.0
                                    : MQH >= 1024 && MQW >= 768
                                        ? 50.0
                                        : MQH >= 1024 && MQW >= 1366
                                            ? 300.0
                                            : MQW >= 375 && MQH >= 667
                                                ? 0.0
                                                : MQW >= 360 && MQH >= 740
                                                    ? 45.0
                                                    : MQW >= 540 && MQH >= 720
                                                        ? 100.0
                                                        : MQW >= 412 &&
                                                                MQH >= 915
                                                            ? 10.0
                                                            : 250),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    phoneNo = number.phoneNumber!;
                  },
                  errorMessage: 'please enter your phone number',
                  autoFocus: true,
                  cursorColor: Colors.blue,
                  keyboardType: TextInputType.phone,
                  textStyle: Theme.of(context).textTheme.bodyText1,
                  spaceBetweenSelectorAndTextField: 0,
                  selectorTextStyle: Theme.of(context).textTheme.headline6,
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
              ),
              SizedBox(
                height: 95,
              ),
              ElevatedButton(
                onPressed: () async {
                  await Provider.of<AuthService>(context, listen: false)
                      .autoPhoneVerification(phoneNo!, context)
                      .then((value) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OTPVerificationScreen(
                                  phoneNo: phoneNo!,
                                )));
                    setState(() {});
                  });
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                      fontSize: MQW >= 820 && MQH >= 1180
                          ? 25
                          : MQW >= 820 && MQH >= 1180
                              ? 20
                              : 20,
                      color: Colors.white),
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
