import 'dart:developer';

import 'package:bloodbank_app/constants/routes.dart';
import 'package:bloodbank_app/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtilities.screenLogger(Routes.otpScreen);
    OtpFieldController otpController = OtpFieldController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OTPTextField(
            controller: otpController,
            onChanged: (pin) {
              print("Changed: " + pin);
            },
            length: 5,
            // onChanged: (value) => print(value),
            width: MediaQuery.of(context).size.width,
            fieldWidth: 80,
            style: TextStyle(fontSize: 17),
            otpFieldStyle: OtpFieldStyle(
                backgroundColor: Colors.blue, borderColor: Colors.green),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              print("Completed: " + pin);
              // Navigator.pushNamed(
              //   context,
              //   Routes.signUpScreen,
              // );
            },
          ),
          ElevatedButton(
            onPressed: () => {
              Navigator.pushNamed(context, Routes.home),
            },
            child: Text("Go to home"),
          ),
        ],
      ),
    );
  }
}
