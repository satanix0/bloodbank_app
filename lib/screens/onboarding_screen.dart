// ignore_for_file: prefer_const_constructors

import 'package:bloodbank_app/constants/onboarding_data.dart';
import 'package:flutter/material.dart';

class MyOnboardingPage extends StatelessWidget {
  const MyOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: onboarding_Data
                  .map(
                    (singleOnboardingScreen) => onboardingWidget(
                      imageUrl: singleOnboardingScreen["image_url"]!,
                      text: singleOnboardingScreen["text"]!,
                    ),
                  )
                  .toList(), // toList( because Column expects a List of Widgets as Children)
            ),
          ),
        ),
      ),
    );
  }

  // Custom Widget.
  Widget onboardingWidget(
      {required String imageUrl, String text = "", int? index}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          imageUrl,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 56
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
