import 'package:bloodbank_app/constants/onboarding_data.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffFA4848),
          child: SingleChildScrollView(
            child: Column(
              children: onboarding_Data
                  .map(
                    (onboardingSingleData) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          onboardingSingleData["image_url"]!,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 57),
                          child: Text(
                            onboardingSingleData["text"]!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
