import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/services/authentication_service.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class OTPVerificationScreen extends StatefulWidget {
  OTPVerificationScreen({Key? key, required this.phoneNo}) : super(key: key);
  String phoneNo;

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  TextEditingController _smsController = TextEditingController();

  AuthService _authService = AuthService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(25),
              width: 350,
              height: 1060,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Enter Code',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'We have sent you on SMS with the code to ${widget.phoneNo}',
                      style: Theme.of(context).textTheme.headline6),
                  SizedBox(
                    height: 60,
                  ),
                  PinCodeTextField(
                    controller: _smsController,
                    autoFocus: true,
                    keyboardType: TextInputType.number,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    length: 6,
                    onChanged: (s) {},
                    appContext: context,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      activeColor: Colors.transparent,
                      selectedColor: Colors.transparent,
                      inactiveColor: Colors.grey,
                      shape: PinCodeFieldShape.circle,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 30,
                      fieldWidth: 30,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'If you did not receive the code, do not worry, a new code will be sent in 60 seconds. ',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      print('++++++++++++++++++++++++++++++++++ Sms is :' +
                          _smsController.text);
                      await Provider.of<AuthService>(context, listen: false)
                          .autoPhoneVerification(
                              widget.phoneNo, context, _smsController.text)
                          .then((value) {
                        setState(() {});
                      });
                    },
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
        ),
      ),
    );
  }
}
