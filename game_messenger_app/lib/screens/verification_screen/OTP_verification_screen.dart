import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Enter Code',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                  'We have sent you on SMS with the code to +964 xxxx-xxxx-xxxx',
                  style: Theme.of(context).textTheme.headline6),
              SizedBox(
                height: 100,
              ),
              PinCodeTextField(
                autoFocus: true,
                keyboardType: TextInputType.number,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                length: 4,
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
                height: 100,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend Code',
                ),
                style: Theme.of(context).textButtonTheme.style,
              )
            ],
          ),
        ),
      ),
    );
  }
}
